##
## linux + kde + script = maximize window over two screen
##
## thanks to an anonymous author that does not want to be known ;)
## script is extremely likely to have bugs, so beware!
##

## depends on: (install via package manager, is not in pip)
## wmck
## wmctrl

import wnck
import gtk
import os
import subprocess
import time

if __name__ == '__main__':
	taskbarheight = 50
	screen = wnck.screen_get_default()
	screen.force_update()
	
	windowname_full = screen.get_active_window().get_name()
	#print windowname_full
	#try:
	#  windowname = windowname_full.split(": ")[1]
	#except Exception as e:
	windowname = windowname_full
	window = gtk.Window()
	# the screen contains all monitors
	screen = window.get_screen()

	# collect data about each monitor
	monitors = []
	nmons = screen.get_n_monitors()

	full_width = 0
	full_height = 0

	for m in range(nmons):
		mg = screen.get_monitor_geometry(m)
		#print "monitor %d: %d x %d" % (m,mg.width,mg.height) 
		full_width = full_width+mg.width
                full_width = full_width * 2
                #print(full_width)
	
		if full_height is 0:
			full_height = mg.height
	
	
		if full_height > mg.height:
			full_height = mg.height
	 
	#os.system("wmctrl -r \""+str(windowname)+"\" -b remove,maximzed_vert,maximized_horz")
	time.sleep(0.4)
	newheight = full_height-int(taskbarheight)
	os.system("wmctrl -r \""+str(windowname)+"\" -e 0,0,0,"+str(full_width)+","+str(newheight))
