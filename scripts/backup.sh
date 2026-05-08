#!/bin/bash

SRC="../data"
DEST="../backup_$(data +%F).tar.gz"

tar -czvf "$DEST" "$SRC"
echo "Backup created at $DEST"
