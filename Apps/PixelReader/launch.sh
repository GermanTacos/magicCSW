#!/bin/sh

cd $(dirname "$0")

export LD_LIBRARY_PATH=$(dirname "$0")/lib:/mnt/SDCARD/magic/bin:$LD_LIBRARY_PATH
/mnt/SDCARD/magic/bin/gptokeyb -k "reader" -c "./reader.gptk" &

sleep 0.6

./reader
	
kill -9 $(pidof gptokeyb)