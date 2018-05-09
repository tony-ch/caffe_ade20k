#!/usr/bin/env sh
TOOLS=./build/tools
LOG=examples/ade20k/caffenet/log/log-`date +%Y-%m-%d-%H-%M-%S`.log
$TOOLS/caffe train \
  --solver=examples/ade20k/caffenet/solver.prototxt 2>&1   | tee $LOG $@
