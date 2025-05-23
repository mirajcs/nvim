#Shortcut Keys#

:e make a file 



#Download a songs#


yt-dlp -f bestaudio --external-downloader ffmpeg \
--external-downloader-args "-ss 00:01:00 -to 00:02:00" \
-x --audio-format mp3 --audio-quality 0 \
--postprocessor-args "-b:a 320k" \
"https://www.youtube.com/watch?v=VIDEO_ID"

