ffmpeg \
-loglevel error \
-nostdin \
-hide_banner \
-f v4l2 -video_size 1280x720 -framerate 50 \
-i /dev/video0 \
-c:v libx264 \
-preset veryfast \
-tune zerolatency \
-profile:v high \
-x264-params "nal-hrd=cbr:force-cfr=1" \
-b:v 4500k \
-minrate 4500k \
-maxrate 4500k \
-bufsize 4500k \
-g 100 \
-f flv \
-attempt_recovery 1 \
-recovery_wait_time 1 \
"rtmp://live.twitch.tv/app/${TW_API_CAMERA}"

: <<'END'
ffmpeg \
-hide_banner \
-f v4l2 -video_size 1280x720 -framerate 50 \
-i /dev/video0 \
-c:v libx264 \
-preset veryfast \
-tune zerolatency \
-profile:v high \
-x264-params "nal-hrd=cbr:force-cfr=1" \
-b:v 4500k \
-minrate 4500k \
-maxrate 4500k \
-bufsize 4500k \
-g 100 \
-f flv "rtmp://live.twitch.tv/app/${TW_API_CAMERA}"
END
