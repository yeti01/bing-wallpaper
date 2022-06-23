#!/bin/sh

bingpicture="$HOME/Pictures/bing-picture-of-the-day.jpg"
blurpicture="$HOME/Pictures/.blur-picture-of-the-day.jpg"

uri=$(curl -s "https://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1&mkt=de-DE" | jq -r ".images[0].url")

curl -s "https://www.bing.com/$uri" > $bingpicture
convert $bingpicture -filter Gaussian -blur 0x8 -level 2%,98%,1.0 $blurpicture
