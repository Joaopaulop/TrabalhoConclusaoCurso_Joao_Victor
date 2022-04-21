from TrabalhoConclusaoCurso_Joao_Victor.model import models
from peewee import *
import sqlite3

db = sqlite3.connect('bd_tcc.db')

class Person(models):


    class Meta:
        database = db # This model uses the "people.db" database.