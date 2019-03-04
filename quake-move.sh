#!/usr/bin/env bash

make build/quake-move.pk3
make build/demo.pk3
gzdoom -iwad doom2 -file build/quake-move.pk3 build/demo.pk3 -warp 1 "$@"
