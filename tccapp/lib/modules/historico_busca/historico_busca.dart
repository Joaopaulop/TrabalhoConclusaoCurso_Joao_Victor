import 'package:flutter/material.dart';
import 'package:tccapp/models/historico.dart';

class HistoricoBuscaPage extends StatefulWidget {
  const HistoricoBuscaPage({Key? key}) : super(key: key);

  @override
  State<HistoricoBuscaPage> createState() => _HistoricoBuscaeState();
}

class _HistoricoBuscaeState extends State<HistoricoBuscaPage> {
  List<Historico> historicoBusca = [Historico(descricao: 'ssdsdsd'),Historico(descricao: 'lsdlsd sldlsd'),Historico(descricao: 'alala ssds sddsds cc'),Historico(descricao: 'sss sss sss s s')];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historico de buscas'),
      ),
      body:ListView.builder(
          shrinkWrap: true ,
          physics: NeverScrollableScrollPhysics(),
          itemCount: historicoBusca.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width:MediaQuery.of(context).size.width ,
                margin:const EdgeInsets.all(20),
                child:Text(historicoBusca[index].descricao)
            ) ;
          }),
    );
  }


}