#!/bin/sh
set -e

GAME_FILE=${GAME_FILE:=game.love}

git archive --format=zip -o $GAME_FILE HEAD
