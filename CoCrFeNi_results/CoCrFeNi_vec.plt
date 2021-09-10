#!/usr/bin/gnuplot

set size ratio 1.2

set xlabel font "Arial,7"
set ylabel font "Arial,7"
set tics font "Arial,7"

set xzeroaxis
set yzeroaxis
set xrange[-2.0:2.0]
set yrange[0:11]
set mxtics
set mytics

set xlabel "DOS, States/eV/atom/spin"
set ylabel "Valence Electron Concentration, n"

plot "CoCrFeNi_tdos_up_vec" u ($2/13.605):($1) w l t "", "CoCrFeNi_tdos_dn_vec" u ($2/-13.605):($1) w l t ""

#pause -1