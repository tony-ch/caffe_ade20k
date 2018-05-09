#!/bin/bash
LOG=examples/ade20k/vgg16/log/test.log
GLOG_logtostderr=1 ./build/tools/caffe test \
    --model=./examples/ade20k/vgg16/train_val_vgg16.prototxt \
    --weights=./examples/ade20k/vgg16/vgg16_train_iter_10000.caffemodel \
    --iterations=1611 2>&1   | tee $LOG $@

