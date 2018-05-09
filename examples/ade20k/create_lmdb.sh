#!/usr/bin/env sh
ADE20K=examples/ade20k

echo "Create train lmdb.."
rm -rf $ADE20K/img_train_lmdb
build/tools/convert_imageset \
--shuffle \
--resize_height=256 \
--resize_width=256 \
/home/tony/app/caffe/data/ade20k/training/ \
$ADE20K/train_img \
$ADE20K/img_train_lmdb

echo "Create val lmdb.."
rm -rf $ADE20K/img_val_lmdb
build/tools/convert_imageset \
--shuffle \
--resize_width=256 \
--resize_height=256 \
/home/tony/app/caffe/data/ade20k/validation/ \
$ADE20K/val_img \
$ADE20K/img_val_lmdb

echo "All Done.."
