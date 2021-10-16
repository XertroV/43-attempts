#!/usr/bin/env bash

function _mk_stable {
	FNAME="$1"
	basePath=${FNAME%.*}
	baseName=${basePath##*/}
	if test -f "$baseName.trf"; then
		echo 'skipping transformation gen b/c' $baseName.trf 'exists'
	else
		echo 'creating transforms file' $baseName.trf
		./_ffmpeg/ffmpeg -i $FNAME -vf vidstabdetect=stepsize=32:shakiness=1:accuracy=15:result=$baseName.trf:tripod=1800 -f null -
	fi
	echo -e "\n\nnow creating stabalized output"
	./_ffmpeg/ffmpeg -y -i $FNAME -vf vidstabtransform=input=$baseName.trf:tripod=1:crop=black,unsharp=5:5:0.8:3:3:0.4 -vcodec libx264 -tune film -acodec copy -preset fast -r 30 ${baseName}_stable.mp4
}

for filename in r2.m4v; do
  _mk_stable $filename &
done

wait
