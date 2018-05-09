#!/bin/bash
LOG=examples/ade20k/resnet50/log/test.log
GLOG_logtostderr=1 ./build/tools/caffe test \
    --model=./examples/ade20k/resnet50/val.prototxt \
    --weights=./examples/ade20k/resnet50/resnet50_iter_10000.caffemodel \
    --iterations=1611 2>&1   | tee $LOG $@

