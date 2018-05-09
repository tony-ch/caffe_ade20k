#!/usr/bin/env sh
TOOLS=./build/tools
LOG=examples/ade20k/googlenet/log/log-`date +%Y-%m-%d-%H-%M-%S`.log
$TOOLS/caffe train \
  --solver=examples/ade20k/googlenet/solver.prototxt \
  --weights=examples/ade20k/googlenet/bvlc_googlenet.caffemodel 2>&1   | tee $LOG $@
