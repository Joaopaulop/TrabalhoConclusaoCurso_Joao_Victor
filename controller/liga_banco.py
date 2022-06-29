import sqlite3


def selecao_nome_usuario(conn, nome):
    conn = sqlite3.connect('/banco/bd_tcc.db')
    cur = conn.cursor()
    cur.execute("SELECT * FROM bd_tcc.informacao WHERE NOME=?",(nome))

    rows = cur.fetchall()

    for row in rows:
        print(row)
