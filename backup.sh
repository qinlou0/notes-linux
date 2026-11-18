#!/bin/bash
if [ -z "$1" ]; then
  echo "用法: ./backup.sh <要备份的目录>"
  exit 1
fi
DEST="$HOME/backup_$(date +%Y%m%d_%H%M%S).tar.gz"
tar -czf "$DEST" "$1" && echo "已备份到: $DEST"
