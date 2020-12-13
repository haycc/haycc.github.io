#!/bin/bash
if hash uuidgen 2>/dev/null; then
homefolder=$(pwd)
newplayer=$(uuidgen)
mkdir $newplayer
cp -r rooms $newplayer/rooms
cp -r art $newplayer/art
cp -r script $newplayer/script
cp -r logic $newplayer/logic
fi

echo "Loading..."
echo
sleep 10
if hash uuidgen 2>/dev/null; then
cd $newplayer/rooms
else
cd rooms
fi
./start.sh
if hash uuidgen 2>/dev/null; then
cd "$homefolder"
rm -r $newplayer
fi
echo
exit