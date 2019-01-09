#!/bin/bash

#for i in $( echo 1 2 4 8 16 ) ; do
#    for j in $( echo 1 2 4 8 16 ) ; do
#	python ./examples/mujoco_all_sac.py --env=swimmer-rllab --log_dir="/home/rcorona/sac/data/" --policy lsp --exp_name="lsp_repeat${i}_parallel${j}" --n_train_repeat ${i} --n_parallel ${j} --n_epochs 20 ; 
#    done
#done

for i in $( echo 0 1 2 3 ) ; do
    export CUDA_VISIBLE_DEVICES=''
    echo $CUDA_VISIBLE_DEVICES

    python ~/sac/examples/mujoco_all_sac.py --env=humanoid-rllab --log_dir="/var/scratch/rcorona/sac/data/" --policy lsp --exp_name="gpu_test${i}" --n_train_repeat 16 --n_parallel 1 --n_epochs 5 --task default --domain humanoid-rllab --gpu_fraction 0.2 &> out${i}.txt &
done 

wait 

