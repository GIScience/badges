#!/bin/bash

BADGES=(experimental active hibernate archive)
COLORS=(orange       blue   lightgray red)

OUTDIR=status

for index in ${!BADGES[*]}; do
    badge=${BADGES[$index]}
    color=${COLORS[$index]}
    wget https://img.shields.io/badge/status-$badge-$color.svg -O $OUTDIR/$badge.svg
    wget https://raster.shields.io/badge/status-$badge-$color.png -O $OUTDIR/$badge.png
done
