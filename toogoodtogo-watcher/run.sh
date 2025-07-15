#!/usr/bin/with-contenv bashio

bashio::log.info "Starting toogoodtogo-watcher"
bashio::log.info "Reading config file from /addon_configs/2a12c4fb_node-toogoodtogo-watcher/config.json. Use the Studio Code Server addon to edit the config file."

cd /

export TOOGOODTOGO_CONFIG_DIR=/config

export TGTG_EMAIL=$(bashio::config 'tgtgEmail')
export MQTT_URL=$(bashio::config 'mqtt.url')
export MQTT_USERNAME=$(bashio::config 'mqtt.username')
export MQTT_PASSWORD=$(bashio::config 'mqtt.password')
export CONFIG=$(echo '{"api":{"credentials":{"email":"'$TGTG_EMAIL'"}},"notifications":{"mqtt":{"enabled":true,"url":"'$MQTT_URL'","username":"'$MQTT_USERNAME'","password":"'$MQTT_PASSWORD'"}}}')

node node_modules/toogoodtogo-watcher watch --config="${CONFIG}"
