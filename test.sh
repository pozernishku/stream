ffmpeg \
-hide_banner \
-f v4l2 -video_size 1280x720 -framerate 25 \
-i /dev/video0 \
-c:v libx264 \
-preset veryfast \
-tune zerolatency \
-profile:v high \
-x264-params "nal-hrd=cbr:force-cfr=1" \
-b:v 3000k \
-minrate 3000k \
-maxrate 3000k \
-bufsize 3000k \
-g 50 \
-f flv "rtmp://live.twitch.tv/app/${TW_API_CAMERA}"
