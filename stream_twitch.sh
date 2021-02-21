ffmpeg \
-loglevel error \
-nostdin \
-i /dev/video0 \
-c:v libx264 -preset veryfast \
-f flv "rtmp://live.twitch.tv/app/${TW_API_CAMERA}"
