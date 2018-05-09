#!/usr/bin/env sh
t=$(date +%Y-%m-%d_%H:%M:%S) 
LOG=examples/ade20k/googlenet/log/log-$t.log
GLOG_logtostderr=1 ./build/tools/caffe train \
    --solver=./examples/ade20k/googlenet/solver.prototxt \
    --snapshot=./examples/ade20k/googlenet/googlenet_iter_10000.solverstate \
    2>&1 | tee $LOG
