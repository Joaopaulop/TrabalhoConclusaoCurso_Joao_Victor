import cv2 # pip install opencv-python
from pyzbar.pyzbar import decode # pip install pyzbar
from PIL import Image # pip install Pillow
import qrapp2 

webcam = cv2.VideoCapture(0, cv2.CAP_DSHOW)

if webcam.isOpened():
   validacao, frame = webcam.read()
   while validacao:
      validacao, frame = webcam.read()
      cv2.imshow("Imagem da Webcam", frame)
      key = cv2.waitKey(2)
      if cv2.waitKey(33) == ord('a'):
         #linha abaixo comentada para n ficar gravando novas imagens e reutilizar a imagem previamente capturada 
         #cv2.imwrite("Foto.png",frame)
         filename = cv2.imread("Foto.png")
         qrapp2.lerQR(filename)
         break
      
      #cv2.imwrite("Foto.png",frame)
webcam.release()


cv2.destroyAllWindows()
