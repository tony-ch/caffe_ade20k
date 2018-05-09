#!/bin/bash
LOG=examples/ade20k/caffenet/log/test.log
GLOG_logtostderr=1 ./build/tools/caffe test \
    --model=./examples/ade20k/caffenet/train_val.prototxt \
    --weights=./examples/ade20k/caffenet/caffenet_iter_10000.caffemodel \
    --iterations=1611 2>&1   | tee $LOG $@

