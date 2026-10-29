/* 身份库（PS 端 C 实现）：LBP 直方图模板的注册与查询。
 *
 * 语义与 `software/golden/identity_db.py` 一致，由
 * `software/tests/test_identity_db_c.py` 编译后**逐操作**对拍。改动任何一处
 * 遍历顺序或返回码之前，先看那个测试。
 *
 * 本模块只管存放与查询，不持有也不调整阈值 —— 阈值由调用方传进来。
 * 这是主文档 §2「注册集、阈值验证集、最终测试集完全分离」在代码结构上的
 * 体现：库不可能偷偷用测试集调参，因为它根本不知道阈值是多少。
 *
 * 存储由调用方提供
 * ----------------
 * 照 `haar_eval.h` / `chi2_classifier.h` 的约定：**本模块不 malloc、不持有
 * 静态工作区**。四块缓冲由调用方给出：
 *
 *     pool          person_cap × tpl_per_person × hist_len 个 uint16
 *     tpl_count     person_cap 个 int32
 *     ids           person_cap × id_stride 字节
 *     db            本结构体本身
 *
 * 冻结规格下（16 人 × 16 模板 × 3776 桶）pool 是 1.93 MB —— 正好是 PL 侧
 * 那份 DDR3（256 MB）或 PS 侧 1 GB DDR3 里可以轻松放下的一块。
 *
 * **每个人的模板占一个定长块**：第 p 个人的第 t 个模板在
 * `pool[(p * tpl_per_person + t) * hist_len]`。定长块换来的东西是下面
 * 那条遍历顺序，不能用「紧凑追加 + 全局槽位表」代替 —— 见下一节。
 *
 * 平局顺序是**按人分组**，不是全局先到先得
 * ----------------------------------------
 * 黄金模型遍历 `_templates.items()`，也就是先按**人**的注册顺序，同一个人
 * 的模板聚在一起；C 的槽位却是全局追加的。两者只在平局时看得出来：
 *
 *     add A1;  add B1;  add A2;      查询落在 A2 与 B1 的正中间
 *
 * 人分组序是 A1 → A2 → B1，先到的是 A2，所以选 A；
 * 全局槽位序是 A1 → B1 → A2，先到的是 B1，所以选 B。
 * 这是**不同的人**，不是同一个人的不同模板。`test_identity_db_c.py` 的
 * `tie-order` 场景就是为这一条构造的，`test_the_tie_scenario_can_tell_the_
 * two_orders_apart` 守着它不被"顺手改掉"。
 *
 * 定点分辨率对**排序**的影响
 * --------------------------
 * 距离用的是 `chi2_classifier.h` 的定点值，与精确有理数最多差
 * `CHI2_ERR_SCALED` 格。两个模板的距离挨得比这个还近时，"谁更近"在数学上
 * 就不可分辨 —— 那不是实现缺陷，是定点表示的固有限制。
 * `test_corpus_ordering_has_room_to_spare` 断言语料里每个查询都留出了足够
 * 的余量，否则"选对了人"只是碰巧。
 *
 * 与黄金模型的**已声明分歧**
 * --------------------------
 * 下面三条是 C 侧有、黄金模型没有的限制。它们不是 bug，但必须显式写在
 * 这里，并且每一条在测试语料里都有对应用例：
 *
 * 1. **容量有限**。黄金模型的 dict 无界；C 的模板池由调用方预先分配，
 *    人满或每人模板满都返回 `ID_DB_ERR_FULL`。这是没有 malloc 的代价。
 * 2. **人名有长度上限**。黄金模型用 Python 字符串；C 的名字区按
 *    `id_stride` 固定划分，放不下（`strlen + 1 > id_stride`）返回
 *    `ID_DB_ERR_ARG`。名字按**字节**算，UTF-8 不做任何转换。
 * 3. **直方图长度不能为 0**。黄金模型允许注册一份 0 长度模板（但之后任何
 *    查询都因归一化失败而抛异常）；C 里 `hist_len == 0` 是"尚未冻结"的
 *    哨兵值，两者不能共用一个值，所以直接拒绝。
 *
 * 另外，直方图元素类型是 `uint16_t`，负值或超过 65535 的值在类型上就
 * 不可能出现 —— 黄金模型的 `int` 允许，这里不必也不该再检查。
 *
 * 契约（测试逐条守）
 * ------------------
 * D1 注册顺序即平局顺序：**先按人**的注册顺序，同一个人内部按模板注册序。
 *    严格小于才替换，所以并列时保留先到者。
 * D2 第一次成功的注册冻结 `hist_len`；之后长度不符的注册与查询一律
 *    `ID_DB_ERR_LEN`。
 * D3 空库检查**先于**长度检查：空库上送什么直方图都返回 `ID_DB_EMPTY`。
 *    与黄金模型 `best_match` 第一行 `if not self._templates: return None`
 *    同序。
 * D4 注册失败时库**完全不变** —— 不冻结长度、不占人、不占槽位。所有可能
 *    失败的检查都排在第一次写之前。
 * D5 只有 `ID_DB_OK` 会写 `*out`；其余返回码一个字节都不碰。与
 *    `haar_resize.h` / `chi2_classifier.h` 同。
 * D6 无全局可变状态，可重入；`id_db_add` 之后调用方改动自己那份直方图
 *    不影响库（库存的是副本）。
 * D7 只写 `pool` / `tpl_count` / `ids` 各自声明的那一段，绝不越界。
 *
 * 本文件是 UTF-8。不要加 BOM。
 */

#ifndef IDENTITY_DB_H
#define IDENTITY_DB_H

#include <stddef.h>
#include <stdint.h>

/* 返回码。
 *
 * **刻意不复用 `chi2_classifier.h` 的数值。** 两个模块的错误码会一起出现在
 * 调用方的 `switch` 里（`identify` 本来就要把 chi2 的结果翻一道），数值撞车
 * 会让"这到底是什么错"变成只有读代码才知道的事。这里 `CHI2_KNOWN` 是 1、
 * `ID_DB_OK` 是 0，看着像同一件事，含义与数值都不同。 */
#define ID_DB_OK        ( 0)  /* 成功：best_match 找到了，identify 判为已知人 */
#define ID_DB_EMPTY     ( 1)  /* 库为空：一个模板都没有，没有东西可比 */
#define ID_DB_UNKNOWN   ( 2)  /* 库非空，但最近的距离也超过阈值 —— 陌生人 */
#define ID_DB_ERR_ARG   (-1)  /* 指针为 NULL、人名为空或过长、hist_len 为 0 */
#define ID_DB_ERR_LEN   (-2)  /* 直方图长度与库内冻结值不一致 */
#define ID_DB_ERR_FULL  (-3)  /* 人数已满，或该人的模板数已满 */
#define ID_DB_ERR_HIST  (-4)  /* chi2 拒绝了这份直方图（总点为 0 或超上界） */

/* 身份库。字段是只读的，调用方不要直接改（`hist_len` / `n_person` 由本模块
 * 维护）；`id_db_init` 之后除 `hist_len` / `n_person` 外都不再变动。 */
typedef struct {
    uint16_t *pool;           /* person_cap × tpl_per_person × hist_len 个 uint16 */
    int32_t  *tpl_count;      /* person_cap 个：每人已注册的模板数 */
    char     *ids;            /* person_cap × id_stride 字节，人名按字节存 */
    size_t    id_stride;      /* 每个人名区的大小，须能放下最长名字 + '\0' */
    size_t    person_cap;     /* 人数上限 */
    size_t    tpl_per_person; /* 每人模板数上限 */
    size_t    hist_len;       /* 0 = 尚未冻结；首次成功的注册把它定死 */
    size_t    n_person;       /* 已注册人数 */
} id_db;

/* 一次查询的结果。`person_id` 指向库内的名字区，**不要 free，也不要在
 * `id_db` 生命周期之外使用**。 */
typedef struct {
    const char *person_id;
    int32_t     person_index;     /* 人的注册序下标 */
    int32_t     template_index;   /* 该人之内的模板注册序下标 */
    int64_t     distance_scaled;  /* 定点距离，标度见 CHI2_SCALE */
    int64_t     similarity_scaled;/* 定点相似度，标度见 CHI2_SCALE */
} id_match;

/* 绑定调用方提供的存储。不分配、不清零（`n_person` 置 0 就够，新建的人会
 * 在登记时把自己的模板计数清零）。
 *
 * `pool` 的元素数是 `person_cap * tpl_per_person * hist_len`，而 `hist_len`
 * 要到第一次注册才知道 —— 所以按 `person_cap * tpl_per_person * 可能的最大
 * 直方图长度` 备一块。冻结规格下是 16 × 16 × 3776。
 *
 * 再次调用会**丢弃**当前内容（`n_person` 归零、`hist_len` 解冻），
 * 但不清零 `pool` —— 旧模板不会被读出，因为每个人都是从 `tpl_count` 为 0
 * 重新开始。 */
void id_db_init(id_db *db, uint16_t *pool, int32_t *tpl_count, char *ids,
                size_t id_stride, size_t person_cap, size_t tpl_per_person);

/* 把一份直方图作为 `person_id` 的一个模板登记入库。
 *
 * 重复调用同一个人是**追加模板**，不是覆盖（主文档 Q8：每人 ≥10 模板）。
 * 名字按字节比较，名字相同的判定为同一个人。
 *
 * 返回 `ID_DB_OK`，或 `ID_DB_ERR_ARG` / `ID_DB_ERR_LEN` / `ID_DB_ERR_FULL`。
 * 失败时库**完全不变**。 */
int id_db_add(id_db *db, const char *person_id,
              const uint16_t *hist, size_t hist_len);

/* 返回距离最近的模板。成功返回 `ID_DB_OK` 并写满 `*out`。
 *
 * 库为空返回 `ID_DB_EMPTY`；长度与库内冻结值不一致返回 `ID_DB_ERR_LEN`；
 * 卡方拒绝这份直方图返回 `ID_DB_ERR_HIST`；参数非法返回 `ID_DB_ERR_ARG`。
 * 除 `ID_DB_OK` 外**不碰 `*out`**。
 *
 * 并列时保留先注册者（先按人、再按该人的模板序，见文件头 D1）。 */
int id_db_best_match(const id_db *db, const uint16_t *hist, size_t hist_len,
                     id_match *out);

/* 在 `best_match` 之上加一步闭区间阈值判定：
 * `distance <= thr_num/thr_den` 判已知人，返回 `ID_DB_OK` 并写满 `*out`；
 * 否则返回 `ID_DB_UNKNOWN` 且**不碰 `*out`**。
 *
 * 阈值合法性借 `chi2_classifier.h` 的规则（分母 > 0、分子 >= 0、乘法不溢出），
 * 非法返回 `ID_DB_ERR_ARG`。阈值检查排在 `best_match` **之前** ——
 * 与黄金模型 `identify` 先查 `isinstance(threshold, Fraction)` 同序。 */
int id_db_identify(const id_db *db, const uint16_t *hist, size_t hist_len,
                   int64_t thr_num, int64_t thr_den, id_match *out);

/* ---- 只读查询。`db` 为 NULL 时一律给"空"的答案，不崩 ---- */

size_t id_db_person_count(const id_db *db);
size_t id_db_total_templates(const id_db *db);

/* 已注册的人的下标；未注册返回 -1。 */
int32_t id_db_find(const id_db *db, const char *person_id);

/* 某人已注册的模板数；未注册返回 0。 */
size_t id_db_template_count(const id_db *db, const char *person_id);

/* 第 `index` 个注册的人名；越界返回 NULL。别 free。 */
const char *id_db_person_id(const id_db *db, size_t index);

#endif /* IDENTITY_DB_H */
