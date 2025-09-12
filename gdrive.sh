#!/bin/bash
rclone mount gdrive:42 ~/googleDrive \
  --vfs-cache-mode writes \
  --vfs-cache-max-size 500M \
  --buffer-size 64M \
  --vfs-read-chunk-size 64M \
  --vfs-read-chunk-size-limit 500M &
