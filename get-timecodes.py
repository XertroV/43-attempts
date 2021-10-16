import xml.dom.minidom
from bs4 import BeautifulSoup
import bs4
from bs4.element import PageElement, Tag

with open('./first-yellow.xml', 'r') as f:
    data = f.read()

x = BeautifulSoup(data, 'xml')
clips = x.find_all('clip')

print(len(clips))

files = {
    '20211013_081801.mp4': 'r4_stable.mp4',
    '20211013_080326.mp4': 'r3_stable.mp4',
    '20211013_072525.mp4': 'r1_stable.mp4',
    '20211013_073159.mp4': 'r2_stable.mp4',
}

def frame_to_ffmpeg_ts(frame, fr, actual_fr):
    frame = frame * actual_fr // fr
    ss_frame = frame % actual_fr
    start_sec = (frame - ss_frame) // actual_fr
    ss_second = start_sec % 60
    ss_min = (start_sec - ss_second) // 60 % 60
    return f"{ss_min:02d}:{ss_second:02d}.{ss_frame:02d}"

def gettimes(clip: PageElement):
    fr = int(clip.find_next('rate').find_next('timebase').get_text())
    fr = fr if fr != 59 else 60
    # out = clip.find_next('out')
    name = clip.find_next('name').get_text()
    media = clip.find_next('media')
    clipitem = media.find_next('clipitem')
    subclip = clipitem.find_next('subclipinfo')
    if clipitem and subclip:
        duration_frames = int(clipitem.find_next('duration').get_text())
        file = clipitem.find_next('file')
        filename = file.find_next('name').get_text()
        start_frame = int(subclip.find_next('startoffset').get_text())

        input_f = files[filename]
        prefix = input_f.split('_')[0]
        output_f = f"{prefix}-{name}.mp4"

        actual_fr = 30
        # duration_frames = duration_frames * actual_fr // fr
        # start_frame = start_frame * actual_fr // fr
        # ss_frame = start_frame % actual_fr
        # start_sec = (start_frame - ss_frame) // actual_fr
        # ss_second = start_sec % 60
        # ss_min = (start_sec - ss_second) % 60
        start = frame_to_ffmpeg_ts(start_frame, fr, actual_fr)
        end = frame_to_ffmpeg_ts(start_frame + duration_frames, fr, actual_fr)

        return {
            'fr': fr,
            'duration_frames': duration_frames,
            'output_f': output_f,
            'input_f': input_f,
            'start_frame': start_frame,
            'ffmpeg': f"ffmpeg -i {input_f} -ss {start} -to {end} -c:v libx264 -c:a copy {output_f} & ;"
        }


for f in list(map(gettimes, clips)):
    if f:
        print(f['ffmpeg'])
