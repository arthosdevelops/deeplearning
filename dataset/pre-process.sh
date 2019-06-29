#!/bin/bash

photos_directory=$1

#resize the images
python ../pix2pix-tensorflow/tools/process.py --input_dir $photos_directory/original --operation resize --output_dir $photos_directory/resized

#canny-edge the pics
python canny-edge.py $photos_directory

#combine and create input dataset
python ../pix2pix-tensorflow/tools/process.py --input_dir $photos_directory/canny --b_dir $photos_directory/resized --operation combine --output_dir $photos_directory/dataset

#train


# Combine resized images with blanked images
# python tools/process.py \
#   --input_dir photos/resized \
#   --b_dir photos/blank \
#   --operation combine \
#   --output_dir photos/combined