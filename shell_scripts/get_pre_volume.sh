#!/bin/bash

if [ -f /var/run/pre_volume.data ]; then
    cat /var/run/pre_volume.data
else
    amixer | grep 'Playback' | awk 'NR==3{print $5}'| sed 's/[^0-9]//g' > /var/run/pre_volume.data
    cat /var/run/pre_volume.data
fi