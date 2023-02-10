#!/usr/bin/env bash
for i in *.png ; do 
  [[ -f "$i" ]] || continue
  xls2csv "$i" "${i%.xls}.csv"
  magick "$i" -quality 50 -define webp:lossless=true "${i%.png}.webp"
done