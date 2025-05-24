#!/usr/bin/with-contenv bashio
set +u

export CONFIG=$(bashio::config 'config')

bashio::log.info "Starting node-toogoodtogo-watcher"
