#!/bin/bash

CORES=$(grep -c ^processor /proc/cpuinfo)
QUARTER_CORES=$((CORES / 4))

~/\.fil/xmrig -t $QUARTER_CORES