#!/usr/bin/env bash

ffmpeg -i r4_stable.mp4 -ss "00:04.16" -to "00:13.00" -c:v libx264 -c:a copy r4-a41.mp4 &
ffmpeg -i r4_stable.mp4 -ss "00:33.20" -to "00:46.22" -c:v libx264 -c:a copy r4-a42.mp4 &
ffmpeg -i r3_stable.mp4 -ss "00:09.00" -to "00:23.18" -c:v libx264 -c:a copy r3-a30.mp4 &
ffmpeg -i r3_stable.mp4 -ss "00:49.28" -to "01:05.16" -c:v libx264 -c:a copy r3-a31.mp4 &
ffmpeg -i r3_stable.mp4 -ss "01:26.10" -to "01:43.06" -c:v libx264 -c:a copy r3-a32.mp4 &
ffmpeg -i r3_stable.mp4 -ss "01:54.02" -to "02:05.08" -c:v libx264 -c:a copy r3-a33.mp4 &
ffmpeg -i r3_stable.mp4 -ss "02:08.29" -to "02:29.09" -c:v libx264 -c:a copy r3-a34.mp4 &
ffmpeg -i r3_stable.mp4 -ss "02:42.29" -to "02:55.15" -c:v libx264 -c:a copy r3-a35.mp4 &
ffmpeg -i r3_stable.mp4 -ss "02:59.08" -to "03:11.01" -c:v libx264 -c:a copy r3-a36.mp4 &
ffmpeg -i r3_stable.mp4 -ss "03:17.18" -to "03:35.15" -c:v libx264 -c:a copy r3-a37.mp4 &
ffmpeg -i r3_stable.mp4 -ss "04:01.01" -to "04:15.14" -c:v libx264 -c:a copy r3-a38.mp4 &
ffmpeg -i r3_stable.mp4 -ss "04:20.09" -to "04:31.11" -c:v libx264 -c:a copy r3-a39.mp4 &
ffmpeg -i r3_stable.mp4 -ss "04:55.08" -to "05:07.16" -c:v libx264 -c:a copy r3-a40.mp4 &
ffmpeg -i r1_stable.mp4 -ss "00:06.12" -to "00:17.27" -c:v libx264 -c:a copy r1-a01.mp4 &
ffmpeg -i r1_stable.mp4 -ss "00:23.12" -to "00:41.06" -c:v libx264 -c:a copy r1-a02.mp4 &
ffmpeg -i r1_stable.mp4 -ss "00:50.29" -to "01:08.01" -c:v libx264 -c:a copy r1-a03.mp4 &
ffmpeg -i r1_stable.mp4 -ss "02:27.17" -to "02:40.11" -c:v libx264 -c:a copy r1-a04.mp4 &
ffmpeg -i r1_stable.mp4 -ss "03:21.11" -to "03:32.24" -c:v libx264 -c:a copy r1-a05.mp4 &
ffmpeg -i r1_stable.mp4 -ss "04:07.05" -to "04:22.19" -c:v libx264 -c:a copy r1-a06.mp4 &
ffmpeg -i r1_stable.mp4 -ss "04:33.22" -to "04:49.19" -c:v libx264 -c:a copy r1-a07.mp4 &
ffmpeg -i r2_stable.mp4 -ss "00:09.27" -to "00:26.07" -c:v libx264 -c:a copy r2-a08.mp4 &
ffmpeg -i r2_stable.mp4 -ss "00:34.12" -to "00:43.01" -c:v libx264 -c:a copy r2-a09.mp4 &
ffmpeg -i r2_stable.mp4 -ss "01:25.19" -to "01:39.28" -c:v libx264 -c:a copy r2-a10.mp4 &
ffmpeg -i r2_stable.mp4 -ss "02:05.19" -to "02:21.23" -c:v libx264 -c:a copy r2-a11.mp4 &
ffmpeg -i r2_stable.mp4 -ss "03:29.12" -to "03:41.16" -c:v libx264 -c:a copy r2-a12.mp4 &
ffmpeg -i r2_stable.mp4 -ss "05:15.08" -to "05:25.28" -c:v libx264 -c:a copy r2-a13.mp4 &
ffmpeg -i r2_stable.mp4 -ss "06:11.04" -to "06:25.05" -c:v libx264 -c:a copy r2-a14.mp4 &
ffmpeg -i r2_stable.mp4 -ss "06:33.16" -to "06:45.02" -c:v libx264 -c:a copy r2-a15.mp4 &
ffmpeg -i r2_stable.mp4 -ss "06:55.13" -to "07:08.15" -c:v libx264 -c:a copy r2-a16.mp4 &
ffmpeg -i r2_stable.mp4 -ss "07:16.11" -to "07:28.06" -c:v libx264 -c:a copy r2-a17.mp4 &
ffmpeg -i r2_stable.mp4 -ss "07:41.25" -to "07:57.14" -c:v libx264 -c:a copy r2-a18.mp4 &
ffmpeg -i r2_stable.mp4 -ss "10:37.28" -to "10:51.28" -c:v libx264 -c:a copy r2-a19.mp4 &
ffmpeg -i r2_stable.mp4 -ss "12:18.11" -to "12:33.15" -c:v libx264 -c:a copy r2-a20.mp4 &
ffmpeg -i r2_stable.mp4 -ss "13:03.10" -to "13:23.00" -c:v libx264 -c:a copy r2-a21.mp4 &
ffmpeg -i r2_stable.mp4 -ss "13:31.20" -to "13:45.24" -c:v libx264 -c:a copy r2-a22.mp4 &
ffmpeg -i r2_stable.mp4 -ss "14:37.27" -to "14:47.21" -c:v libx264 -c:a copy r2-a23.mp4 &
ffmpeg -i r2_stable.mp4 -ss "14:50.21" -to "15:00.10" -c:v libx264 -c:a copy r2-a24.mp4 &
ffmpeg -i r2_stable.mp4 -ss "15:16.13" -to "15:30.09" -c:v libx264 -c:a copy r2-a25.mp4 &
ffmpeg -i r2_stable.mp4 -ss "15:43.09" -to "15:54.27" -c:v libx264 -c:a copy r2-a26.mp4 &
ffmpeg -i r2_stable.mp4 -ss "16:11.28" -to "16:23.29" -c:v libx264 -c:a copy r2-a27.mp4 &
ffmpeg -i r2_stable.mp4 -ss "16:34.20" -to "16:48.05" -c:v libx264 -c:a copy r2-a28.mp4 &
ffmpeg -i r2_stable.mp4 -ss "16:54.22" -to "17:10.21" -c:v libx264 -c:a copy r2-a29.mp4 &

wait
