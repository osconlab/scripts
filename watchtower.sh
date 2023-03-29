docker run -d \
--name watchtower \
--restart=always \
-e TZ=Europe/Copenhagen \
-e WATCHTOWER_CLEANUP=true \
-e WATCHTOWER_INCLUDE_RESTARTING=true \
-e WATCHTOWER_INCLUDE_STOPPED=true \
-e WATCHTOWER_NOTIFICATION_SLACK_CHANNEL=#homelab \
-e WATCHTOWER_NOTIFICATIONS=slack \
-e WATCHTOWER_POLL_INTERVAL=21600 \
-e WATCHTOWER_ROLLING_RESTART=true \
-v /var/run/docker.sock:/var/run/docker.sock \
containrrr/watchtower
