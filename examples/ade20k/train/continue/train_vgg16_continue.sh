#!/usr/bin/env sh
#!/usr/bin/env sh
t=$(date +%Y-%m-%d_%H:%M:%S)
LOG=examples/ade20k/vgg16/log/log-$t.log
GLOG_logtostderr=1 ./build/tools/caffe train \
    --solver=examples/ade20k/vgg16/solver_vgg16.prototxt \
    --snapshot=./examples/ade20k/vgg16/vgg16_train_iter_10000.solverstate \
    2>&1 | tee $LOG
