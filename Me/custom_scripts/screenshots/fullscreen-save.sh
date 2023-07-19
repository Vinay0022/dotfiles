#!/bin/sh

maim | tee ~/Me/Pictures/$(date +%s).png | xclip -selection clipboard -t image/png

