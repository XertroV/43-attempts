#!/usr/bin/env bash

EXT=m4v

FRATE=30

function _mk_green {
	FNAME="$1"
	basePath=${FNAME%.*}
	baseName=${basePath##*/}
	attempt=${baseName##*-}
	recordingN=${baseName%-*}
	echo "$baseName $attempt $recordingN"
   mkdir -p out
   rm out/$baseName.$EXT || true
	ffmpeg -r 1 -i ${recordingN}-bg.png -r $FRATE -i $FNAME -filter_complex \
	"
      color=#00ff00:size=1280x720 [matte];
      [1:0] format=rgb24, split[mask][video];
      [0:0][mask] blend=all_mode=difference,
         curves=m='0/0 .12/0 .22/1 1/1',
         format=gray,
         smartblur=1,
         eq=brightness=20:contrast=3,
         eq=brightness=50:contrast=2,
         eq=brightness=-5:contrast=50,
         smartblur=3,
         format=rgb24 [mask];
      [matte][video][mask] maskedmerge,format=rgb24
  " \
  -shortest \
   -pix_fmt yuv422p \
   -r $FRATE out/$baseName.$EXT &
}

for filename in r*-a*.mp4; do
  _mk_green $filename
done

wait
sync
echo "done"
