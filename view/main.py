from kivy.app import App
from kivy.uix.button import Button
from matplotlib.pyplot import text

class Test(App):
    def build(self):
        return Button(text="hello world \n  Sucesso no TCC")
        
Test().run()