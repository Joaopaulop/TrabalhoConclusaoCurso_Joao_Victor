import cv2
import sys
import bbox
from pyzbar.pyzbar import decode
from PIL import Image 
import webbrowser


    
d = decode(Image.open("Foto.png"))

print(d)

#url = repr(d)

#webbrowser.open(url)

    
#print(d[0].data.decode())  
    

