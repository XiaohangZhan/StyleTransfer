#!/bin/bash
srun -p VISpring -w SH-IDC1-10-5-41-2 --gres=gpu:8 -n1 \
    /bin/python style.py train --style-image "style_imgs/mosaic.jpg" --dataset "/mnt/lustre/share/DSK/datasets/mscoco2017/" --gpu 0 --visualize 1 2>&1 | tee log/$(date +"%Y-%m-%d-%T").txt
