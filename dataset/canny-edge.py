import cv2
import numpy as np
from matplotlib import pyplot as plt
import os
import sys

main_directory=sys.argv[1]
resized_directory=main_directory+"/resized"
output_directry=main_directory+"/canny"

os.mkdir(output_directry)

for filename in os.listdir(resized_directory):
	if not filename.startswith('.'):
		img = cv2.imread("{}/{}".format(resized_directory, filename),0)
		edges = cv2.Canny(img,100,200)
		edges = cv2.bitwise_not(edges)
		output_file="{}/{}".format(output_directry, filename)
		cv2.imwrite(output_file,edges)
		