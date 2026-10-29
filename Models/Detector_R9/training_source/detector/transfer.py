"""Function-preserving 8->16 widening, based on Net2Net (arxiv:1511.05641)."""
import torch


def transfer_float(net,checkpoint,seed=20261014):
    if checkpoint.get('architecture')!='tiny8_bn' or checkpoint.get('fused') or checkpoint.get('quant'):
        raise ValueError('require an unfused float tiny8_bn checkpoint')
    old=checkpoint['state']
    source_channels=old['convs.0.weight'].shape[0]
    if source_channels not in (8,16):raise ValueError('source channels must be 8 or 16')
    if net.channels==source_channels:
        net.load_state_dict(old);return 'direct float checkpoint transfer'
    if source_channels!=8 or net.channels!=16 or net.fused:raise ValueError('widening requires 8->16 unfused channels')
    destination=net.state_dict()
    for name,value in old.items():
        if name.startswith('convs.'):
            if name.endswith('.weight'):
                mapped=value.repeat(2,1 if name.startswith('convs.0.') else 2,1,1)
                if not name.startswith('convs.0.'):mapped=mapped/2
            else:mapped=value.repeat(2)
        elif name.startswith('heads.'):
            mapped=value.repeat(1,2,1,1)/2 if name.endswith('.weight') else value.clone()
        elif name.startswith('norms.'):
            mapped=value.repeat(2) if value.ndim else value.clone()
        else:mapped=value.clone()
        if mapped.shape!=destination[name].shape:raise ValueError('transfer shape: '+name)
        destination[name]=mapped
    # Opposite perturbations of each duplicated head-input pair sum to zero.
    # Initial outputs are preserved; unequal backward gradients break symmetry.
    generator=torch.Generator().manual_seed(seed)
    for i in range(2):
        name='heads.{}.weight'.format(i)
        noise=torch.randn(old[name].shape,generator=generator)*.005
        destination[name][:,:8]+=noise;destination[name][:,8:]-=noise
    net.load_state_dict(destination)
    return '8->16 duplicate channels / fan-in multiplicity; zero-sum head perturbation 0.005'
