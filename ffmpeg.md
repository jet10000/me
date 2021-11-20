# ffmpeg

## Converting Audio into Different Formats / Sample Rates
Minimal example: transcode from MP3 to WMA:<br>
`ffmpeg -i input.mp3 output.wma`
 
You can get the list of supported formats with:<br>
`ffmpeg -formats`

You can get the list of installed codecs with:<br>
`ffmpeg -codecs`
 
Convert WAV to MP3, mix down to mono (use 1 audio channel), set bit rate to 64 kbps and  sample rate to 22050 Hz:<br>
`ffmpeg -i input.wav -ac 1 -ab 64000 -ar 22050 output.mp3`<br>

Convert any MP3 file to WAV 16khz mono 16bit:<br>
`ffmpeg -i 111.mp3 -acodec pcm_s16le -ac 1 -ar 16000 out.wav`<br>

Convert any MP3 file to WAV 20khz mono 16bit for ADDAC WAV Player:<br>
`ffmpeg -i 111.mp3 -acodec pcm_s16le -ac 1 -ar 22050 out.wav`<br>

**cd into dir for batch process:**<br>
`for i in *.mp3; do ffmpeg -i "$i" -acodec pcm_s16le -ac 1 -ar 22050 "${i%.mp3}-encoded.wav"; done`

Picking the 30 seconds fragment at an offset of 1 minute:<br>
In seconds<br>
`ffmpeg -i input.mp3 -ss 60 -t 30 output.wav`<br>

In HH:MM:SS format<br>
`ffmpeg -i input.mp3 -ss 0:01:00 -t 0:00:30 output.wav`

Split an audio stream at specified segment rate (e.g. 3 seconds)<br>
`ffmpeg -i somefile.mp3 -f segment -segment_time 3 -c copy out%03d.mp3`<br>

## Extract Audio

`ffmpeg -i input-video.avi -vn -acodec copy output-audio.aac `

`vn` is no video.<br>
`acodec` copy says use the same audio stream that's already in there.


`ffmpeg -i video.mp4 -f mp3 -ab 192000 -vn music.mp3`

The -i option in the above command is simple: it is the path to the input file. The second option -f mp3 tells ffmpeg that the ouput is in mp3 format. The third option i.e -ab 192000 tells ffmpeg that we want the output to be encoded at 192Kbps and -vn tells ffmpeg that we dont want video. The last param is the name of the output file.

## Replace Audio on a Video without re-encoding.

**preferred method**<br>
`ffmpeg -i INPUT.mp4 -i AUDIO.wav -shortest -c:v copy -c:a aac -b:a 256k OUTPUT.mp4`

strip audio stream away from video<br>
`ffmpeg -i INPUT.mp4 -codec copy -an OUTPUT.mp4`

combine the two streams together (new audio with originally exisiting video)<br>
`ffmpeg -i 36.MOV -i 36.wav -map 0:v -map 1:a -c copy -y 36-encoded.mov`<br>

or add an offset to audio<br>
`ffmpeg -i 36.MOV -itsoffset -0.25 -i 36.wav -map 0:v -map 1:a -c copy -y 36-encoded.mov`<br>

- - - 

You say you want to "extract audio from them (mp3 or ogg)". But what if the audio in the mp4 file is not one of those? you'd have to transcode anyway. So why not leave the audio format detection up to ffmpeg?

To convert one file:

` ffmpeg -i videofile.mp4 -vn -acodec libvorbis audiofile.ogg `

To convert many files:

` for vid in *.mp4; do ffmpeg -i "$vid" -vn -acodec libvorbis "${vid%.mp4}.ogg"; done `

You can of course select any ffmpeg parameters for audio encoding that you like, to set things like bitrate and so on.

Use ` -acodec libmp3lame `  and change the extension from `.ogg` to `.mp3` for mp3 encoding.

If what you want is to really extract the audio, you can simply "copy" the audio track to a file using -acodec copy. Of course, the main difference is that transcoding is slow and cpu-intensive, while copying is really quick as you're just moving bytes from one file to another. Here's how to copy just the audio track (assuming it's in mp3 format):

` ffmpeg -i videofile.mp4 -vn -acodec copy audiofile.mp3 `

Note that in this case, the audiofile format has to be consistent with what the container has (i.e. if the audio is AAC format, you have to say audiofile.aac). You can use the ffprobe command to see which formats you have, this may provide some information:

` for file in *; do ffprobe $file 2>&1 |grep Audio; done `

A possible way to automatically parse the audio codec and name the audio file accordingly would be:

` for file in *mp4 *avi; do ffmpeg -i "$file" -vn -acodec copy "$file".`ffprobe "$file" 2>&1 |sed -rn 's/.*Audio: (...), .*/\1/p'`; done `

Note that this command uses sed to parse output from ffprobe for each file, it assumes a 3-letter audio codec name (e.g. mp3, ogg, aac) and will break with anything different.

- - - 

Encoding multiple files

You can use a Bash "for loop" to encode all files in a directory:

`$ mkdir newfiles` <br>
`$ for f in *.m4a; do ffmpeg -i "$f" -codec:v copy -codec:a libmp3lame -q:a 2 newfiles/"${f%.m4a}.mp3"; done`

- - - 

`ffmpeg -i input.m4a -acodec libmp3lame -ab 128k output.mp3` <br>
m4a to mp3 conversion with ffmpeg and lame

A batch file version of the same command would be:<br>
`for f in *.m4a; do ffmpeg -i "$f" -acodec libmp3lame -ab 256k "${f%.m4a}.mp3"; done`

- - - 

## Extract Single Image from a Video at Specified Frame
`$ vf [ss][filename][outputFileName]`<br>

where `vf` is a custom bash script as follows:<br>
`$ ffmpeg -ss $1 -i $2 -qmin 1 -q:v 1 -qscale:v 2 -frames:v 1 -huffman optimal $3.jpg`<br>
<br>
ss offset = frame number divided by FPS of video = the decimal (in milliseconds) ffmpeg needs i.e. 130.5<br>

## Merge Multiple Videos
concat demuxer<br>
`$ cat mylist.txt`<br>
`file '/path/to/file1'`<br>
`file '/path/to/file2'`<br>
`file '/path/to/file3'`<br>
<br>
`$ ffmpeg -f concat -safe 0 -i mylist.txt -c copy output.mp4`

## Rotate Video by editing metadata (without re-encoding).
`ffmpeg -i input.m4v -map_metadata 0 -metadata:s:v rotate="90" -codec copy output.m4v`

## Split a Video into Images
`$ ffmpeg -i video.flv image%d.jpg`

## Convert Images into a Video
`$ ffmpeg -f image2 -i image%d.jpg imagestovideo.mp4`<br>
`$ ffmpeg -i image-%03d.png -c:v libx264 -pix_fmt yuv420p test.mp4`<br>
`$ ffmpeg -r 1/5 -i image-%03d.png -c:v libx264 -vf fps=25 -pix_fmt yuv420p test.mp4`<br>

## Convert Single Image into a Video
`$ ffmpeg -loop 1 -i image.png -c:v libx264 -t 60 -pix_fmt yuv420p -vf scale=1920:1080 out.mp4`<br>

## Convert non-sequentially named Images in a directory 
`$ ffmpeg -framerate 30 -pattern_type glob -i '*.jpeg' -c:v libx264 -pix_fmt yuv420p gan-1.mov`<br>

## Convert image sequence of many different sizes and conform to specific frame size
`$ ffmpeg -i image-%04d.jpg -c:v libx264 -pix_fmt yuv420p -vf "scale=max(1280\,a*720):max(1280\,720/a),crop=1280:720" test.mp4`

## Guarantee aspect ratio from image sequence
`$ ffmpeg -i image-%04d.jpg -c:v libx264 -pix_fmt yuv420p -vf "scale=720:-2" test.mp4`

## Evaluate which ratio to apply for scaling, then scale with the requisite amount of padding
`$ ffmpeg -i image-%04d.jpg -c:v libx264 -pix_fmt yuv420p -vf "scale=iw*min(1280/iw\,720/ih):ih*min(1280/iw\,720/ih), pad=1280:720:(1280-iw*min(1280/iw\,720/ih))/2:(720-ih*min(1280/iw\,720/ih))/2" test.mp4`
<br>
<br>
1920 version<br>
<br>
`$ ffmpeg -i image-%04d.jpg -c:v libx264 -pix_fmt yuv420p -vf "scale=iw*min(1920/iw\,1080/ih):ih*min(1920/iw\,1080/ih), pad=1920:1080:(1920-iw*min(1920/iw\,1080/ih))/2:(1080-ih*min(1920/iw\,1080/ih))/2" test.mp4`

## Convert .mov (JPEG-A or other codec) to H264 .mp4
`ffmpeg -i input.mov -vcodec libx264 -pix_fmt yuv420p output.mp4`<br>

## Simple FLAC convert
`ffmpeg -i audio.xxx -c:a flac audio.flac`

## Mix Stereo to Mono
You can modify a video file directly without having to re-encode the video stream. However the audio stream will have to be re-encoded.
<br>
Left channel to mono:
`ffmpeg -i video.mp4 -map_channel 0.1.0 -c:v copy mono.mp4`<br>
<br>
Left channel to stereo:<br>
`ffmpeg -i video.mp4 -map_channel 0.1.0 -map_channel 0.1.0 -c:v copy stereo.mp4`<br>
<br>
If you want to use the right channel, write `0.1.1` instead of `0.1.0.`

## Trim End of file (mp3)
Here's a command line that will slice to 30 seconds without transcoding:
<br>
`ffmpeg -t 30 -i inputfile.mp3 -acodec copy outputfile.mp3`
<br>

- - -

## To Encode or Re-encode ?

Do you need to cut video with re-encoding or without re-encoding mode? You can try to following below command.<br>
Synopsis: ffmpeg -i [input_file] -ss [start_seconds] -t [duration_seconds] [output_file]

#### use ffmpeg cut mp4 video without re-encoding

Example:<br>
`ffmpeg -i source.mp4 -ss 00:00:05 -t 00:00:10 -c copy cut_video.mp4`<br>

#### use ffmpeg cut mp4 video with re-encoding

Example:<br>
`ffmpeg -i source.mp4 -ss 00:00:05 -t 00:00:10 -async 1 -strict -2 cut_video.mp4`<br>

If you want to cut off section from the beginning, simply drop -t 00:00:10 from the command

#### reduce filesize

Example:<br>
`ffmpeg -i input.mov -vcodec libx264 -crf 24 output.mp4`<br>
<br>
It reduced a 100mb video to 9mb.. Very little change in video quality.

Example:<br>
`ffmpeg -i video.mov -vf eq=saturation=0 -s 640x480 -c:v libx264 -crf 24 output.mp4`<br>
<br>
make a grayscale version and scale to 640x480

### Convert MP4 to WEBM
`ffmpeg -i input.mp4 -c:v libvpx-vp9 -crf 31 -b:v 1M output.webm`<br>
[more info](http://trac.ffmpeg.org/wiki/Encode/VP9)<br>

### Convert MKV to MP4
`ffmpeg -i file.mkv`<br>
<br>
check for streams that you want (video/audio). be sure to convert/specify DTS 6 channel audio stream<br>
<br>
`ffmpeg -i input.mkv -strict experimental -map 0:0 -map 0:1 -c:v copy -c:a:1 libmp3lame -b:a 192k -ac 6 output.mp4`
<br>
### Add Watermark overlay (png) to the center of a video
`ffmpeg -i source.mov -i watermark.png -filter_complex "overlay=x=(main_w-overlay_w)/2:y=(main_h-overlay_h)/2" output.mp4`
<br>

### Reverse a video
`ffmpeg -i vid.mp4 -vf reverse reversed.mp4`
<br>

### Concat a video with a reversed copy of itself for ping-pong looping effect
`ffmpeg -i input.mp4 -filter_complex "[0:v]reverse,fifo[r];[0:v][r] concat=n=2:v=1 [v]" -map "[v]" output.mp4`
- - -
more commands<br>
http://www.catswhocode.com/blog/19-ffmpeg-commands-for-all-needs
