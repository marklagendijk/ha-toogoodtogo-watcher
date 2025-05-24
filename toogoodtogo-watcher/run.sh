#!/usr/bin/env bashio

echo "Test!"

bashio::log.info "starting toogoodtogo-watcher"

cd /
export CONFIG=$(bashio::config 'config')
node node_modules/toogoodtogo-watcher watch --config="${CONFIG}"

bashio::log.error "toogoodtogo-watcher stopped"
