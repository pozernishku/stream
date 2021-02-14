raspivid -o - -t 0 -n -hf -fps 30 -b 4000000 \
| ~/ffmpeg/ffmpeg -re -ar 44100 -ac 2 -acodec pcm_s16le \
-f s16le -ac 2 -i /dev/zero -f h264 \
-i - -vcodec copy -acodec aac -ab 128k -g 50 \
-strict experimental -f flv "rtmp://a.rtmp.youtube.com/live2/${YT_API_CAMERA}"
