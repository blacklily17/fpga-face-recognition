"""Detection loss variants for controlled training diagnostics."""
import torch
from torch.nn import functional as F


def detection_loss(outputs, labels, targets, variant='legacy', return_parts=False):
    rows = torch.cat([o.permute(0, 2, 3, 1).reshape(len(o), -1, 5)
                      for o in outputs], dim=1)
    positive, negative = labels == 1, labels == 0
    values = F.binary_cross_entropy_with_logits(rows[..., 0], positive.float(), reduction='none')
    pos, neg = values[positive], values[negative]
    budget = min(len(neg), max(len(pos)*3, len(labels)*2))
    mined = torch.topk(neg, budget).values if budget else neg
    zero = rows.sum()*0
    if variant == 'legacy':
        classification = (pos.mean() if len(pos) else zero) + (mined.mean()*0.5 if budget else zero)
    elif variant == 'balanced_ohem':
        # A mined negative has the same weight as a positive. The old separate
        # means gave all negatives together only half the positive weight.
        classification = (pos.sum()+mined.sum())/max(len(pos), len(labels), 1)
    elif variant == 'dense_focal':
        # Lin et al., https://arxiv.org/abs/1708.02002, eq. (5).
        # gamma=2; alpha=0.75 is an explicit experiment setting for our sparse
        # center targets, not a claim to reproduce RetinaNet's benchmark.
        probability = torch.sigmoid(rows[..., 0])
        pt = torch.where(positive, probability, 1-probability)
        alpha = torch.where(positive, .75, .25)
        weighted = values*alpha*(1-pt).square()
        classification = weighted[positive | negative].sum()/max(len(pos), 1)
    else:
        raise ValueError('unknown loss variant: '+variant)
    regression = (F.smooth_l1_loss(rows[..., 1:][positive], targets[positive], beta=0.1)
                  if len(pos) else zero)
    total = classification+regression*3
    if return_parts:
        return total, dict(classification=float(classification.detach()),
                           regression=float(regression.detach()), positives=len(pos),
                           mined_negatives=budget if variant != 'dense_focal' else 0,
                           negatives_used=len(neg) if variant == 'dense_focal' else budget)
    return total
