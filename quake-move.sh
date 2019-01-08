#!/usr/bin/env bash

make
gzdoom -iwad doom2 -file build/quake-move.pk3 -warp 1 "$@"
