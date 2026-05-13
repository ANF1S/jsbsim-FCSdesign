#qt  terminal for gui window
#set terminal qt size 1000,600
set terminal pngcairo size 1200,800 enhanced font "Arial,14"
set output "states.png"
# labels
set xlabel "time[s]"
set ylabel "states"

# grid
set grid

# Options to plot data
# 1: time
# 2: alpha-rad
# 3: theta-rad
# 4: q-rad_sec
# 5: h-sl-ft
# 6: lat-geod-rad
# 7: long-gc-rad
# 8: elevator-pos-rad
# 9: vt-fps
set datafile separator ","
plot "JSBoutA4.csv" using 1:3 with lines lw 2 title "theta-rad",\
	     "" using 1:4 with lines lw 2 title "q-rad_sec"

set output
