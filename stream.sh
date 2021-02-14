ffmpeg \
-re -stream_loop -1 \
-i video.mp4 \
-c:v libx264 \
-c:a aac \
-f fifo -fifo_format flv -map 0:v -map 0:a -drop_pkts_on_overflow 1 -attempt_recovery 1 -recovery_wait_time 1 "rtmp://a.rtmp.youtube.com/live2/${YT_API_CAMERA}"
