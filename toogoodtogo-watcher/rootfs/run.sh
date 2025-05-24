#!/usr/bin/env bashio

bashio::log.info "Starting toogoodtogo-watcher"

cd /
export CONFIG=$(bashio::config 'config')
node node_modules/toogoodtogo-watcher watch --config="${CONFIG}"
