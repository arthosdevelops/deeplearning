#!/bin/bash

directory_name=$1
epochs=$2

python ../pix2pix-tensorflow/pix2pix.py --mode train --output_dir $directory_name --max_epochs $epochs --input_dir ../dataset/$directory_name/dataset --which_direction AtoB
