#!/bin/bash

for i in $( echo 1 2 4 8 16 ) ; do
    for j in $( echo 1 2 4 8 16 ) ; do
	python ./examples/mujoco_all_sac.py --env=swimmer-rllab --log_dir="/home/rcorona/sac/data/" --policy lsp --exp_name="lsp_repeat${i}_parallel${j}" --n_train_repeat ${i} --n_parallel ${j} --n_epochs 20 ; 
    done
done

