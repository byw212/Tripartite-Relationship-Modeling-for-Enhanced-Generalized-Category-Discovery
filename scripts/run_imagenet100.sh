#!/bin/bash

set -e
set -x

CUDA_VISIBLE_DEVICES=0 python train.py \
    --dataset_name 'imagenet_100' \
    --batch_size 128 \
    --grad_from_block 11 \
    --epochs 200 \
    --num_workers 8 \
    --use_ssb_splits \
    --sup_weight 0.35 \
    --weight_decay 5e-5 \
    --transform 'imagenet' \
    --lr 0.15 \
    --eval_funcs 'v2' \
    --memax_weight 1.0 \
    --exp_name cifar100_TRM \
    --K 15 \
    --threshold 0.9\
    --w_u 0.5 \
