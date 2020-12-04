#!/usr/local/Cellar/gnuplot/5.4.0_1/bin/gnuplot
#
#    
#    	G N U P L O T
#    	Version 5.4 patchlevel 0    last modified 2020-07-13 
#    
#    	Copyright (C) 1986-1993, 1998, 2004, 2007-2020
#    	Thomas Williams, Colin Kelley and many others
#    
#    	gnuplot home:     http://www.gnuplot.info
#    	faq, bugs, etc:   type "help FAQ"
#    	immediate help:   type "help"  (plot window: hit 'h')
set terminal qt 0 size 1024,1024
#set pm3d
load "/Users/maxim/Pragma/Libs/gnuplot-palettes/inferno.pal"

#set style line  1 lt 1 lc rgb '#440154' # dark purple
#set style line  2 lt 1 lc rgb '#472c7a' # purple
#set style line  3 lt 1 lc rgb '#3b518b' # blue
#set style line  4 lt 1 lc rgb '#2c718e' # blue
#set style line  5 lt 1 lc rgb '#21908d' # blue-green
#set style line  6 lt 1 lc rgb '#27ad81' # green
#set style line  7 lt 1 lc rgb '#5cc863' # green
#set style line  8 lt 1 lc rgb '#aadc32' # lime green
#set style line  9 lt 1 lc rgb '#fde725' # yellow

set key at 1.3,1.3 right top font "default,18" spacing 1.5
set spiderplot
set style spiderplot  linewidth 1.000 dashtype solid pointtype 6 pointsize 2.000
set style spiderplot fillstyle  transparent solid 0.20 border
set grid spider lt black lc "grey" lw 1 back
set origin 0,0
set style data spiderplot
set style function lines
set paxis 1 tics offset -4,0.5 font "deafault, 14"
set for [i=2:20] paxis i tics format ""
set for [i=1:20] paxis i tics 0,1,3
set for [i=1:20] paxis i range [0:3]
set for [i=1:20] paxis i label font "default, 16" offset 1,-0.5
set lmargin  15
set bmargin  15
set rmargin  15
set tmargin  15
set locale "C"
GNUTERM = "qt"
VoxelDistance = {9.00500479207635e-308, 1.97626258336499e-323}
x = 0.0

p \
keyentry with spiderplot ls 1 lw 3 title "Kubernetes", \
for [i=2:9] "kuber_spider_data.dat" index 0 u i ls 1 lw 2 pt 6 ps 2 ti columnhead, \
newspiderplot, \
keyentry with spiderplot ls 3 lw 3 title "SLURM", \
for [i=2:9] "kuber_spider_data.dat" index 1 u i ls 3 lw 2 pt 6 ps 2 ti columnhead

#    EOF
