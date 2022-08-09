import 'package:flutter/material.dart';
import 'package:tccapp/db/animais.dart';
import 'package:tccapp/modules/qrCode_module/qrcode_page.dart';
import 'package:tccapp/widgets/button.dart';

class RetornoCartaPage extends StatefulWidget {
  String? nome;
   RetornoCartaPage({Key? key,required this.nome}) : super(key: key);

  @override
  State<RetornoCartaPage> createState() => _RetornoCartaPageState();
}

class _RetornoCartaPageState extends State<RetornoCartaPage> {
  bool maisInformacoes = false;
  AnimaisDAO animalDao = AnimaisDAO();

  List list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('NOMEEEEEEE');
    print(widget.nome);
    buscarAnimal();


  }

  buscarAnimal() async{
       var result = await animalDao.select(widget.nome!);
       setState(() {
         list = result;
       });
       print('lista');
       print(list.length);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.nome!), leading: Container(),),
      body: SingleChildScrollView(
          child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  list.length > 0 ?
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.asset(
                        'images/${list.first['seq_informacao']}.jpeg'),
                  ):Container(),
                  SizedBox(
                    width: 20,
                  ),
                  list.length > 0 ?
                  maisInformacoes == false
                      ? Text(list.first['detalhamento'])
                      : Text(list.first['descricao']):Container(),
                  maisInformacoes == false
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              maisInformacoes = true;
                            });
                          },
                          child: Button(
                            title: 'Mais informacoes',
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              maisInformacoes = false;
                            });
                          },
                          child: Button(
                            title: 'Voltar',
                          ),
                        ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  QrCodePage()),
                      );
                    },
                    child: Button(
                      title: 'Sair',
                    ),
                  )
                ],
              ))),
    );
  }
}
