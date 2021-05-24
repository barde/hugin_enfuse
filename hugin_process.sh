#!/bin/bash

workDir='images'

alignTool='/Applications/Hugin/tools_mac/align_image_stack'
enfuseTool='/Applications/Hugin/tools_mac/enfuse'

$alignTool -a align_ -m -v IMG*.tif


inputFiles=$(ls ${workDir}align*.tif)

$enfuseTool -o "${workDir}result.jpeg" --compression=100 --contrast-weight=1.00 \
  --exposure-weight=0.00 --saturation-weight=0.00 --contrast-window-size=5 \
  --hard-mask --gray-projector=luminance \
  $inputFiles

