#!/usr/bin/gnuplot

set size ratio 1.2

set xlabel font "Arial,8"
set ylabel font "Arial,8"
set tics font "Arial,8"

set xzeroaxis
set yzeroaxis
set xrange[0:2.5]
set yrange[-10:4]
set mxtics
set mytics

set xlabel "DOS, States/eV/atom/spin"
set ylabel "Energy, eV"

plot "CoCrFeNi_tdos" u ($2/13.605):($1*13.605) w l t ""

#pause -1