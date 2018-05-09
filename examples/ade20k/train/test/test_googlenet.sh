#!/bin/bash
LOG=examples/ade20k/googlenet/log/test.log
GLOG_logtostderr=1 ./build/tools/caffe test \
    --model=./examples/ade20k/googlenet/train_val.prototxt \
    --weights=./examples/ade20k/googlenet/googlenet_iter_10000.caffemodel \
    --iterations=1611 2>&1   | tee $LOG $@

