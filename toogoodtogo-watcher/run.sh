#!/usr/bin/with-contenv bashio

bashio::log.info "starting toogoodtogo-watcher"

cd /

export TOOGOODTOGO_CONFIG_DIR=/config
node node_modules/toogoodtogo-watcher watch
