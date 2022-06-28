import cv2
from pyzbar.pyzbar import decode
from PIL import Image 
from qrapp2 import decode

"""
Para realizar a identificacao do qrcode ou texto o usuario deve tirar uma foto e selecionar se quer buscar o texto da imagem ou texto
"""

webcam = cv2.VideoCapture(0, cv2.CAP_DSHOW)

if webcam.isOpened():
   validacao, frame = webcam.read()
   while validacao:
      validacao, frame = webcam.read()
      cv2.imshow("Video da Webcam", frame)
      key = cv2.waitKey(2)
      if key == 27:
         decode()
         #break
      
      cv2.imwrite("Foto.png",frame)
webcam.release()


cv2.destroyAllWindows()



