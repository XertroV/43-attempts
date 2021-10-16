# README

Some tools for making composite clips of multiple similar shots overlayed on each-other.
Looks a bit like super meat boy's after-level thing.

Used to make: <https://www.youtube.com/watch?v=Vr6X2Z6Ag2w>

<p align="center">
  <a href="https://www.youtube.com/watch?v=Vr6X2Z6Ag2w">
    <img width="500" src="https://raw.githubusercontent.com/XertroV/43-attempts/4b9c6da2233cdfbb1ef4a6d6ad73402a234f4899/preview.png?raw=true">
  </a>
</p>

## prep

You can download the original files via `./download-originals.sh`. This downloads `r{1,2,3,4}.m4v`

You'll also need `./_ffmpeg/ffmpeg` to be an ffmpeg binary with support for vidstab (for stabilization) -- I suggest downloading a static build from: https://johnvansickle.com/ffmpeg/ (extract the archive and rename to folder to `_ffmpeg`)

(or you could simlink to a binary or whatever -- edit the `.sh` scripts if you want to change this behavior)

## making the thing

General idea:

0. download footage, (should be named: r1.m4v, r2.m4v, etc)
1. stabilize footage `ffmpeg-stabalize.sh`
2. cut out clips `make-clips.sh`
   - Notes:
      1. I clipped a bunch of stuff in premiere to start with
         - before trying premiere's stabilization, which was a mistake, but didn't matter much in this case.
      1. to get the timestamps: I selected the clips and exported as a finalcut XML file
      1. `get-timecodes.py` reads the XML file and spits out lots of ffmpeg commands (which I pasted into `make-clips.sh`)
3. open stabilized footage in VLC, find a good bg shot, take a snapshot, copy to `rX-bg.png` (rX corresponds to the input file, which should be `rX.m4v`, e.g. `r1.m4v`)
4. run `make-green.sh` to generate a masked version of each clip -- when it's similar to the bg image it'll show up as green (not perfect, but okay) -- moving stuff isn't colored green
   1. output files are in `./out`
5. drag them all into premiere
6. create sequences for each raw original clip (r1-4) and drag clips into them
   1. align (in timeline) footage in all clips so the interesting bits start simultaneously
   2. physically align (up/down/left/right) clips if need be, tho should be fine mostly (in the original thing a08 has some weird stuff at the start)
   3. set a chroma key on each clip for transparency (probs easiest to do 1 then make a preset)
   4. nb: I made 5 sequences -- split r2 into two b/c there's like 22 attempts in r2
7. drag all those sequences (4+ of them) on to a parent sequence
8. also drag main underlying footage beneath them (so they show up on top)
9. physically align all clip sequences so the framing matches
10. align the start of attempts in each sequence
11. title, sounds tuff, export, done

## about

made using:

* ffmpeg
* vidstab
* premiere
* some scripts
* and this blog post: http://oioiiooixiii.blogspot.com/2016/09/ffmpeg-extract-foreground-moving.html
