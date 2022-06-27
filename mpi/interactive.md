# command to obtain interactive nodes on Expanse

## CPU node:
```
srun --partition=debug  --pty --account=use300 --nodes=1 --ntasks-per-node=4  --mem=8G -t 00:30:00 --wait=0 --export=ALL /bin/bash
```

## GPU node:
```
srun --partition=gpu-debug --pty --account=use300 --ntasks-per-node=10     --nodes=1 --mem=96G --gpus=1 -t 00:30:00 --wait=0 --export=ALL /bin/bash
```
