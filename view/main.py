from curses import BUTTON3_CLICKED
from kivy.app import App
from kivy.uix.button import Button
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.label import Label
from kivy.uix.textinput import TextInput



class Test(App):
    def build(self):
        box = BoxLayout(orientation='vertical')
        login = TextInput(text='Login')
        nome = TextInput(text='Nome')
        escolaridade = TextInput(text='Escolaridade')
        senha = TextInput(text='Senha')
        confirma_senha = TextInput(text=' Confirmar Senha')
        button = Button(text='Botao 1')
        button2 = Button(text='Botao 2')

        box.add_widget(login)
        box.add_widget(nome)
        box.add_widget(escolaridade)
        box.add_widget(senha)
        box.add_widget(confirma_senha)
        box.add_widget(button)
        box.add_widget(button2)

        box2 = BoxLayout(orientation='vertical')
        button3 = Button(text='Botao 3')
        label2 = Label(text='texto 2')
        box2.add_widget(button3)
        box2.add_widget(label2)
        
        box.add_widget(box2)
        return box
        
Test().run()