#! /usr/bin/bash
partition=amd-longq
git clean -df
srun --gres=gpu --partition=$partition ./configure --with-cuda=/cm/shared/apps/cuda90/toolkit/current --with-cuda-arch=sm_30
srun --gres=gpu --partition=$partition make
