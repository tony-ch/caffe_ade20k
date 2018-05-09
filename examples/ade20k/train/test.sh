#!/usr/bin/env bash

ROOT=examples/ade20k/train/test

if [ "$1" == "caffe" ];then
    . $ROOT/test_caffenet.sh
elif [ "$1" == "alex" ];then
    . $ROOT/test_alexnet.sh
elif [ "$1" == "google" ];then
    . $ROOT/test_googlenet.sh
elif [ "$1" == "resnet" ];then
    . $ROOT/test_resnet.sh
elif [ "$1" == "vgg" ];then
    . $ROOT/test_vgg.sh
elif [ "$1" == "all" ];then
    . $ROOT/test_caffenet.sh
    . $ROOT/test_alexnet.sh
    . $ROOT/test_googlenet.sh
    . $ROOT/test_resnet.sh
    . $ROOT/test_vgg.sh
fi
