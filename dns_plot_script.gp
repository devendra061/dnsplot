#!/usr/bin/gnuplot
	reset
	set terminal png
	
	set xdata time
	set timefmt "%d-%b-%Y %H:%M"
  #Select appropriate format for X-Axis
	set format x "%H:%M"
	set xlabel "time"
	
	set ylabel "Query"
  #Set appropriate range for Y-Axis
	set yrange [0:800]
	
	set grid
	
	#'using 2:1' means set second column  as X axis and first column as Y axis
	plot "dns_log_analysisAllRecords" using 2:1 title "DNS Queries per second" with lines

#End of File
