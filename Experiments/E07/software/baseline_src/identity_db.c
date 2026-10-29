/* 身份库 —— 实现。契约、遍历顺序与已声明分歧都在 `identity_db.h`。 */

#include <string.h>

#include "identity_db.h"
#include "chi2_classifier.h"

/* 第 p 个人的名字。`id_stride` 为 0 时所有人名指向同一处，但那时任何
 * 注册都会先在长度检查上返回 ARG，所以没有第二个人会被登记。 */
static char *slot_id(const id_db *db, size_t p)
{
    return db->ids + p * db->id_stride;
}

/* 第 p 个人的第 t 个模板。只在 `hist_len` 已冻结、且该槽位确实被写过时调用。 */
static const uint16_t *slot_hist(const id_db *db, size_t p, size_t t)
{
    return db->pool + (p * db->tpl_per_person + t) * db->hist_len;
}

static void store_match(id_match *out, const id_db *db, size_t p, size_t t,
                        int64_t dist, int64_t sim)
{
    out->person_id = slot_id(db, p);
    out->person_index = (int32_t)p;
    out->template_index = (int32_t)t;
    out->distance_scaled = dist;
    out->similarity_scaled = sim;
}

void id_db_init(id_db *db, uint16_t *pool, int32_t *tpl_count, char *ids,
                size_t id_stride, size_t person_cap, size_t tpl_per_person)
{
    if (db == NULL) {
        return;
    }
    db->pool = pool;
    db->tpl_count = tpl_count;
    db->ids = ids;
    db->id_stride = id_stride;
    db->person_cap = person_cap;
    db->tpl_per_person = tpl_per_person;
    db->hist_len = 0;
    db->n_person = 0;
}

int32_t id_db_find(const id_db *db, const char *person_id)
{
    size_t p;

    if (db == NULL || person_id == NULL) {
        return -1;
    }
    for (p = 0; p < db->n_person; p++) {
        if (strcmp(slot_id(db, p), person_id) == 0) {
            return (int32_t)p;
        }
    }
    return -1;
}

size_t id_db_person_count(const id_db *db)
{
    return (db == NULL) ? 0 : db->n_person;
}

size_t id_db_total_templates(const id_db *db)
{
    size_t p, n = 0;

    if (db == NULL) {
        return 0;
    }
    for (p = 0; p < db->n_person; p++) {
        n += (size_t)db->tpl_count[p];
    }
    return n;
}

size_t id_db_template_count(const id_db *db, const char *person_id)
{
    int32_t p = id_db_find(db, person_id);
    return (p < 0) ? 0 : (size_t)db->tpl_count[p];
}

const char *id_db_person_id(const id_db *db, size_t index)
{
    if (db == NULL || index >= db->n_person) {
        return NULL;
    }
    return slot_id(db, index);
}

int id_db_add(id_db *db, const char *person_id,
              const uint16_t *hist, size_t hist_len)
{
    size_t name_len, p;
    int32_t found;

    if (db == NULL || person_id == NULL || hist == NULL) {
        return ID_DB_ERR_ARG;
    }
    name_len = strlen(person_id);
    if (name_len == 0) {
        return ID_DB_ERR_ARG;
    }
    /* `hist_len == 0` 在本模块里是「尚未冻结」的哨兵，所以 0 长度的模板
     * 不可能被登记 —— 与黄金模型的一处已声明分歧，见头文件。 */
    if (hist_len == 0) {
        return ID_DB_ERR_ARG;
    }
    /* 名字按字节算：`id_stride` 里要同时放下名字和结尾的 '\0'。 */
    if (name_len + 1 > db->id_stride) {
        return ID_DB_ERR_ARG;
    }

    /* ---------- 以下全是可能失败的检查，一个字节都还没写 ----------
     *
     * 顺序：长度一致性 -> 容量。库满时先报 LEN，因为长度对不上才是调用方
     * 真正的问题；容量那一条在参数正确时才会被撞到。 */
    if (db->hist_len != 0 && hist_len != db->hist_len) {
        return ID_DB_ERR_LEN;
    }

    found = id_db_find(db, person_id);
    if (found < 0) {
        if (db->n_person >= db->person_cap) {
            return ID_DB_ERR_FULL;
        }
        p = db->n_person;
    } else {
        p = (size_t)found;
        if ((size_t)db->tpl_count[p] >= db->tpl_per_person) {
            return ID_DB_ERR_FULL;
        }
    }

    /* ---------- 到这里不会再失败了，开始改状态 ---------- */

    /* 冻结排在写之前：第一次**成功的**注册才定下整库的长度。
     * 契约 D4 —— 失败路径在上面全都返回了，`hist_len` 不会被冻结。 */
    if (db->hist_len == 0) {
        db->hist_len = hist_len;
    }

    if (found < 0) {
        memcpy(slot_id(db, p), person_id, name_len + 1);
        db->tpl_count[p] = 0;
        db->n_person++;
    }

    /* 存副本：调用方之后改动自己那份直方图不影响库（契约 D6）。 */
    memcpy((void *)slot_hist(db, p, (size_t)db->tpl_count[p]), hist,
           hist_len * sizeof(uint16_t));
    db->tpl_count[p]++;
    return ID_DB_OK;
}

int id_db_best_match(const id_db *db, const uint16_t *hist, size_t hist_len,
                     id_match *out)
{
    size_t p, t;
    int have = 0;
    size_t best_p = 0, best_t = 0;
    int64_t best_d = 0, best_s = 0;

    if (db == NULL || hist == NULL || out == NULL) {
        return ID_DB_ERR_ARG;
    }
    if (hist_len == 0) {
        return ID_DB_ERR_ARG;
    }

    /* 空库排在长度检查**之前** —— 照抄黄金模型 `best_match` 的检查顺序，
     * 空库上送什么直方图返回的都是"空"，不是"长度错"（契约 D3）。 */
    if (db->n_person == 0) {
        return ID_DB_EMPTY;
    }
    if (hist_len != db->hist_len) {
        return ID_DB_ERR_LEN;
    }

    /* 遍历顺序 = 黄金模型的遍历顺序：**外层是人、内层是该人的模板**。
     * 换成"按全局槽位先到先得"，平局时选出来的人会不一样（见头文件）。 */
    for (p = 0; p < db->n_person; p++) {
        for (t = 0; t < (size_t)db->tpl_count[p]; t++) {
            const uint16_t *tpl = slot_hist(db, p, t);
            int64_t d, s;

            if (chi2_distance_scaled(hist, tpl, db->hist_len, &d) != CHI2_OK) {
                return ID_DB_ERR_HIST;
            }
            /* **严格小于**才替换：并列时保留先到者（契约 D1）。
             * 写成 `<=` 就变成"后来的顶掉先来的"，平局语义当场反过来。 */
            if (!have || d < best_d) {
                if (chi2_similarity_scaled(hist, tpl, db->hist_len, &s) != CHI2_OK) {
                    return ID_DB_ERR_HIST;
                }
                have = 1;
                best_d = d;
                best_s = s;
                best_p = p;
                best_t = t;
            }
        }
    }

    /* 人一旦被登记就至少带一个模板，所以正常路径上 `have` 必为 1。
     * 留这一条是为了让"登记了人却没有模板"这种坏状态有明确的出口。 */
    if (!have) {
        return ID_DB_EMPTY;
    }

    store_match(out, db, best_p, best_t, best_d, best_s);
    return ID_DB_OK;
}

int id_db_identify(const id_db *db, const uint16_t *hist, size_t hist_len,
                   int64_t thr_num, int64_t thr_den, id_match *out)
{
    id_match m;
    int dec;

    if (db == NULL || hist == NULL || out == NULL) {
        return ID_DB_ERR_ARG;
    }

    /* 阈值合法性不在这里重新推导一遍，而是借 `chi2_decide` 自己判：
     * 距离 0 对任何合法阈值都在定义域内，所以 `chi2_decide(0, ·, ·)`
     * 是一次纯粹的参数校验，规则只有一份、不会与 chi2 那边分叉。
     *
     * 顺序照抄黄金模型：`identify` 先查阈值类型，再调 `best_match`。 */
    if (chi2_decide(0, thr_num, thr_den) == CHI2_ERR_ARG) {
        return ID_DB_ERR_ARG;
    }

    /* `m` 清零只是为了不让"best_match 失败时 m 未初始化"成为编译器对
     * 下面 `*out = m` 的疑虑；那条路径其实早就 return 了。 */
    memset(&m, 0, sizeof m);
    dec = id_db_best_match(db, hist, hist_len, &m);
    if (dec != ID_DB_OK) {
        return dec;
    }

    dec = chi2_decide(m.distance_scaled, thr_num, thr_den);
    if (dec == CHI2_ERR_ARG) {
        /* 这一支**证明上走不到**。`chi2_decide` 只有两组理由返回 ERR_ARG：
         * 阈值非法，或 `dist_scaled` 落在 `[0, 2*CHI2_SCALE]` 之外。
         * 阈值刚才已经查过；而距离必定在值域内 —— `chi2_classifier.h`
         * 证过定点值是精确值的**下**取整（`acc <= M*2^32`），
         * 而归一化直方图的 χ² 恒 <= 2。于是 `chi2_decide` 在这里
         * 只可能返回 KNOWN 或 UNKNOWN。
         *
         * 留着它不是为了兜底，是为了**把「不可达」这个判断也钉住**：
         * 哪天 chi2 的定点方案变了（比如改成四舍五入，值就可能越过上界），
         * 这一段会立刻变成活的，`mutation_probe.py` 里那条
         * `expect_escape` 会以「可达性结论过期」报出来。 */
        return ID_DB_ERR_ARG;
    }
    if (dec != CHI2_KNOWN) {
        return ID_DB_UNKNOWN;
    }

    *out = m;
    return ID_DB_OK;
}
