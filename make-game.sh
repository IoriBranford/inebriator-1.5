#!/bin/sh
set -e

GAME_FILE=${GAME_FILE:=game.love}

zip -r $GAME_FILE * -x@.gitignore
