#!/bin/sh

mirror="rsync://mirrors.uk2.net/archlinux/"
local="/home/slithery/arch-mirror/"

rsync \
  --verbose \
  --no-motd \
  --recursive \
  --links \
  --safe-links \
  --hard-links \
  --times \
  --delete-after \
  --max-delete=3000 \
  --delay-updates \
  --human-readable \
  --itemize-changes \
  "$mirror" \
  "$local"
