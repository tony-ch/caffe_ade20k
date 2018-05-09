#!/usr/bin/env bash
ROOT=examples/ade20k/train/train

if [ "$1" == "caffe" ];then
    . $ROOT/train_caffenet.sh
elif [ "$1" == "alex" ];then
    . $ROOT/train_alexnet.sh
elif [ "$1" == "google" ];then
    . $ROOT/train_googlenet.sh
elif [ "$1" == "resnet" ];then
    . $ROOT/train_resnet.sh
elif [ "$1" == "vgg" ];then
    . $ROOT/train_vgg.sh
elif [ "$1" == "all" ];then
    . $ROOT/train_caffenet.sh
    . $ROOT/train_alexnet.sh
    . $ROOT/train_googlenet.sh
    . $ROOT/train_resnet.sh
    . $ROOT/train_vgg.sh
fi

