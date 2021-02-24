ffmpeg \
-loglevel error \
-nostdin \
-re -stream_loop -1 \
-i video.mp4 \
-c copy -preset superfast \
-f flv -attempt_recovery 1 -recovery_wait_time 1 "rtmp://a.rtmp.youtube.com/live2/${YT_API_CAMERA}"
