import cv2
import webbrowser

img = cv2.imread("qrcode.png")
det= cv2.QRCodeDetector()
val, pts, st_code=det.detectAndDecode(img)
print(val)

webbrowser.open(val)