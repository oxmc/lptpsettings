"import stuff"
from PIL import Image
import subprocess
import os
import sys
import time
from gpiozero import LED
from tkinter import *

root = Tk()
root.title("settings")

multicolorbacklight = LED(9)

def multicolorbacklighton():
    multicolorbacklight.on()
    subprocess.Popen([sys.executable, "/home/pi/.lptpsettings/modules/.play.sh"])

def multicolorbacklightoff():
   multicolorbacklight.off() 


multicolorbacklightbuttonon = Button(root, text="turn on multicolorbacklight", command=multicolorbacklighton, fg="green")
multicolorbacklightbuttonoff = Button(root, text="turn off multicolorbacklight", command=multicolorbacklightoff, fg="red")

multicolorbacklightbuttonon.grid()
multicolorbacklightbuttonoff.grid()
root.mainloop
