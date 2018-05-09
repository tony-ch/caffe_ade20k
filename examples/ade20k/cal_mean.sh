#!/usr/bin/env sh
echo "create mean proto file..."
build/tools/compute_image_mean examples/ade20k/img_train_lmdb examples/ade20k/mean.binaryproto
echo "done..."
