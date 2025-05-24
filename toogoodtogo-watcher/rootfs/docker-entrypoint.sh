#!/usr/bin/env bashio

export CONFIG=$(bashio::config 'config')

bashio::log.info "Starting toogoodtogo-watcher"
cd /
exec node node_modules/toogoodtogo-watcher watch
