#!/usr/bin/env sh
TOOLS=./build/tools
LOG=examples/ade20k/vgg16/log/log-`date +%Y-%m-%d-%H-%M-%S`.log
$TOOLS/caffe train \
  --solver=examples/ade20k/vgg16/solver_vgg16.prototxt \
  --weights=examples/ade20k/vgg16/VGG_ILSVRC_16_layers.caffemodel 2>&1   | tee $LOG $@
