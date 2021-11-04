#!/bin/bash
set -e

EXT_DIR=$(pwd)
SOURCEMOD_DIR=$EXT_DIR/../sourcemod
METAMOD_DIR=$EXT_DIR/../metamod
CSGO_DIR=$EXT_DIR/..

#build
mkdir -p "$EXT_DIR/build"
pushd "$EXT_DIR/build"
#CC=clang CXX=clang++
python "$EXT_DIR/configure.py" --enable-optimize --sm-path "$SOURCEMOD_DIR" --mms-path "$METAMOD_DIR" --hl2sdk-root "$CSGO_DIR" --sdks=csgo
ambuild
popd
