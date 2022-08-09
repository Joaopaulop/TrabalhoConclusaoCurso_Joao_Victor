import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class AnimaisDAO{


  Future<Database> getDatabase() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'tcc.db');

    return openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          await db.execute(
              "CREATE TABLE informacao (seq_informacao	integer, nome varchar(100), detalhamento	varchar(550), tipo	varchar(50), descricao	varchar(1000), seq_nivel	integer, PRIMARY KEY(seq_informacao))"
          );
        });
  }

  Future<void> insertDB() async {
    final Database db = await getDatabase();
    await db.transaction((txn) async {
      int id1 = await txn.rawInsert(
          "INSERT INTO informacao (seq_informacao, nome, detalhamento, tipo, descricao, seq_nivel) VALUES ('1', 'Urso_Polar', 'Os ursos-polares são animais mamíferos (possuem pelo e produzem leite) encontrados na região do Ártico, um local muito frio e com bastante gelo. É o maior de todos os ursos existentes no mundo!', 'Carnivoro', 'Esses bichos são conhecidos por seus pelos brancos, que permitem que eles se disfarcem no ambiente cheinho de neve... Mas você sabia que, por trás desse monte de branco, eles têm pele negra?! Além disso, eles são praticamente um cobertor gigante: eles só conseguem nadar e ficar nessas áreas tão geladas graças a terem muita gordura e o pelo deles dificultarem a entrada do frio. Os ursos-polares não apresentam predadores naturais, sendo, portanto, os grandes reis do Ártico.', '1')");
      print('inserted1: $id1');
      int id2 = await txn.rawInsert(
          "INSERT INTO informacao (seq_informacao, nome, detalhamento, tipo, descricao, seq_nivel) VALUES ('2', 'Onça', 'Símbolo da fauna do Brasil e capaz de se disfarçar na mata, andar com leveza, escalar árvores altas e atravessar rios, a onça parece ter os poderes de invisibilidade de um guerreiro ninja! ', 'Carnivoro', 'Costumam serem mais ativas quando o Sol se põe e podem caçar à noite, pois enxerga bem no escuro e tem audição e olfato aguçados. S Seus ouvidos são capazes de ouvir qualquer barulho na mata! Ela não corre: se esconde, segue a presa sem ser percebida e ataca saltando de um galho no meio da mata de repente, com uma mordida bem forte. Ainda por cima, elas nem têm medo de água! Inclusive, são ótimas nadadoras e podem atravessar rios de até 1 quilômetro de largura para pescar.', '2')"
      );
      print('inserted2: $id2');
      int id3 = await txn.rawInsert(
          "INSERT INTO informacao (seq_informacao, nome, detalhamento, tipo, descricao, seq_nivel) VALUES ('3', 'Galinha', 'A galinha, fêmea do galo, é uma ave muito usada na parte da nossa vida alimentar, mesmo que você não perceba! Elas são criadas para produzir carne e ovos. ', 'Carnivoro', 'Elas vieram da Ásia, mas se espalharam pelo mundo todo! Isso aconteceu por causa da domesticação delas. Galinhas não conseguem voar direito, mas sabia que elas voavam bem antigamente? Pois é, elas perderam essa habilidade porque não precisam mais fugir de predadores e ficam grande parte da vida no solo. São bichos onívoros, ou seja, comem de tudo! Também são ovíparos: elas botam ovos, e como botam! Elas chegam a botar mais de duzentos ovos por ano!', '3')"
      );
      print('inserted3: $id3');
      int id4 = await txn.rawInsert(
          "INSERT INTO informacao (seq_informacao, nome, detalhamento, tipo, descricao, seq_nivel) VALUES ('4', 'Coelho', 'Coelho é um animal mamífero, ou seja, possuem pelos e produzem leite. Muitas pessoas acham que eles são roedores, mas na verdade não são. São parecidos também com outros animais chamados lebres.', 'Herbívoro', 'Os coelhos podem ser de vários tamanho e cores. São animais herbívoros: eles comem vegetais, frutos, sementes, raízes e algas! Eles também agem à noite e são bem quietinhos, mas quando se machucam ou se assustam, soltam um som altíssimo. Sabia que os coelhos têm muitos filhotes? Pois é, diferente das mães humanas que ficam grávidas por cerca de 9 meses, as mães coelhas ficam por 32 dias e nasce cerca de 4 a 12 filhotes! As mães visitam pouco, só para dar leite, e eles param com um mês de beber.', '4')"
      );
      print('inserted4: $id4');
    });
  }


  Future<List> select(String nome) async {
    final Database db = await getDatabase();
    final List<Map<String, dynamic>> result = await db.rawQuery('SELECT * FROM informacao WHERE nome = ?', [nome]);
    print(result);

    return result;
  }



}