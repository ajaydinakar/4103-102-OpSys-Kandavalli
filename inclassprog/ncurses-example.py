#!/usr/bin/env python

from os import system
import curses
import time
import threading

class cell(object):
    def __init__(self,row=0,col=0):
        self.row = row
        self.col = col

class MyThread(threading.Thread):

    def __init__(self, cell,myscreen,lock,color):
        # Call parent constructor (thread)
        threading.Thread.__init__(self)
        
        self.cell = cell
        self.myscreen = myscreen
        self.lock = lock
        self.color = color
        
    def run(self):
        """
        Thread run method. Check URLs one by one.
        """
        self.myscreen.addstr(self.cell.row, self.cell.col, self.name)
        self.cell.col += 20

        for i in range(50):
            self.myscreen.addstr(self.cell.row, self.cell.col+i, "#",curses.color_pair(self.color))
            time.sleep(.01)
            self.myscreen.refresh()

myscreen = curses.initscr()

curses.start_color()
curses.use_default_colors()

for i in range(0, curses.COLORS):
    curses.init_pair(i + 1, i, -1)  

lock = threading.Semaphore(3)

myscreen.border(0)

threads = []
base_row = 2

for i in range(5):
    threads.append(MyThread(cell(base_row,10),myscreen,lock,base_row))
    base_row += 2

for t in threads:
    t.start()

myscreen.getch()
curses.endwin()
