#!/usr/bin/env bash

ROOT=examples/ade20k/train/continue

if [ "$1" == "caffe" ];then
    . $ROOT/train_caffenet_continue.sh
elif [ "$1" == "alex" ];then
    . $ROOT/train_alexnet_continue.sh
elif [ "$1" == "google" ];then
    . $ROOT/train_googlenet_continue.sh
elif [ "$1" == "resnet" ];then
    . $ROOT/train_resnet_continue.sh
elif [ "$1" == "vgg" ];then
    . $ROOT/train_vgg16_continue.sh
elif [ "$1" == "all" ];then
    . $ROOT/train_caffenet_continue.sh
    . $ROOT/train_alexnet_continue.sh
    . $ROOT/train_googlenet_continue.sh
    . $ROOT/train_resnet_continue.sh
    . $ROOT/train_vgg16_continue.sh
fi
