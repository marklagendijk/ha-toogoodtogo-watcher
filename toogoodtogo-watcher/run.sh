#!/usr/bin/with-contenv bashio

bashio::log.info "starting toogoodtogo-watcher"

cd /
export TELEGRAM_BOT_TOKEN=$(bashio::config 'telegramBotToken')
export CONFIG=$(echo '{"notifications":{"telegram":{"enabled":true,"botToken":"'$TELEGRAM_BOT_TOKEN'"}}}')
export TOOGOODTOGO_CONFIG_DIR=/data/

node node_modules/toogoodtogo-watcher watch --config="${CONFIG}"
