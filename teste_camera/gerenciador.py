from kivy.uix.screenmanager import Screen
from kivymd.app import MDApp
from kivymd.uix.button import MDRectangleFlatButton


class MainApp(MDApp):
    def build(self):
        screen = Screen()
        screen.add_widget(
            MDRectangleFlatButton(
                text="Cartas",
                pos_hint={"center_x": 0.3, "center_y": 0.5},
            )
            
        )
        screen.add_widget(
            MDRectangleFlatButton(
                text="Texto",
                pos_hint={"center_x": 0.7, "center_y": 0.5},
            )
        )
        return screen


MainApp().run()