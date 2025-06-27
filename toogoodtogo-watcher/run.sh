#!/usr/bin/with-contenv bashio

bashio::log.info "Starting toogoodtogo-watcher"
bashio::log.info "Reading config file from /addon_configs/2a12c4fb_node-toogoodtogo-watcher/config.json. Use the Studio Code Server addon to edit the config file."

cd /

export TOOGOODTOGO_CONFIG_DIR=/config
node node_modules/toogoodtogo-watcher watch
