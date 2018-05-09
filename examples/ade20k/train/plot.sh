#!/usr/bin/env sh

./tools/extra/plot_training_log.py.example $1 save_$1_$2.png /home/tony/app/caffe/examples/ade20k/$2/log/log-*.log
