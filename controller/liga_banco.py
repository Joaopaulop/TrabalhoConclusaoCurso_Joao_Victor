import sqlite3

conn = sqlite3.connect('/banco/bd_tcc.db')

def selecao_nome_usuario(conn, nome):
    cur = conn.cursor()
    cur.execute("SELECT * FROM TCC.USUARIO WHERE NOME=?",(nome,))

    rows = cur.fetchall()

    for row in rows:
        print(row)