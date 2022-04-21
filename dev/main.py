from TrabalhoConclusaoCurso_Joao_Victor.model import models
# from peewee import *
from peewee import SqliteDatabase
import sqlite3

db = SqliteDatabase('bd_tcc.db')

class Person(models):


    class Meta:
        database = db # This model uses the "people.db" database.