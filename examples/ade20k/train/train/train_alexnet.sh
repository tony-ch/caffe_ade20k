#!/usr/bin/env sh
TOOLS=./build/tools
LOG=examples/ade20k/alexnet/log/log-`date +%Y-%m-%d-%H-%M-%S`.log
$TOOLS/caffe train \
  --solver=examples/ade20k/alexnet/solver.prototxt \
  --weights=examples/ade20k/alexnet/bvlc_alexnet.caffemodel 2>&1   | tee $LOG $@
