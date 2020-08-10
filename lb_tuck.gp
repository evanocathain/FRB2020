# This makes a plot of FRB010724 to be used
# for the FRB2020 Group photo

set term postscript enhanced color solid
set output "lb_tuck.ps"

set title "Fast Radio Bursts 2020 Meeting"
set ylabel "Frequency (GHz)"
set  xlabel "Time (ms)"
unset colorbox
plot [0:500][1.230:1.512]"lb.plot" u (($1-6.6)*1000):(1.5165-$2*0.003):3 w ima
