#!/usr/bin/env sh
TOOLS=./build/tools
LOG=examples/ade20k/resnet50/log/log-`date +%Y-%m-%d-%H-%M-%S`.log
$TOOLS/caffe train \
  --solver=examples/ade20k/resnet50/solver.prototxt \
  --weights=examples/ade20k/resnet50/ResNet-50-model.caffemodel 2>&1   | tee $LOG $@
