import 'package:flutter/material.dart';
import 'package:tccapp/models/dependentes.dart';
import 'package:tccapp/modules/cadastro_dependentes/cadastro_dependentes.dart';
import 'package:tccapp/modules/home/home_page.dart';
import 'package:tccapp/widgets/button.dart';


class ResponsavelPage extends StatefulWidget {
  const ResponsavelPage({Key? key}) : super(key: key);

  @override
  State<ResponsavelPage> createState() => _ResponsavelPageState();
}

class _ResponsavelPageState extends State<ResponsavelPage> {

  List<Dependentes> dependentes = [Dependentes(nome: 'Mario'),Dependentes(nome: 'Joao'),Dependentes(nome: 'Ana'),Dependentes(nome: 'Maria')];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              'Bem-vindo Matheus'),
         ListView.builder(
              shrinkWrap: true ,
              physics: NeverScrollableScrollPhysics(),
              itemCount: dependentes.length,
             itemBuilder: (BuildContext context, int index) {
               return Container(
                 margin:const EdgeInsets.all(20),
                 child:Row(
                   children: [
                     Text(dependentes[index].nome),
                     SizedBox(width: 5,),
                     Icon(Icons.restore),
                     SizedBox(width: 5,),
                     Icon(Icons.create),
                     SizedBox(width: 5,),
                     Icon(Icons.cancel_outlined),
                     SizedBox(width: 5,),
                     Icon(Icons.add_circle_outline_outlined),
                   ],
                 )
               ) ;
             }),

          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  CadastroDependentes()),
              );
            },
            child: Button(title: 'Adicionar dependente',),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  HomePage()),
              );
            },
            child: Button(title: 'Sair',),
          )




        ],
      ),
    );
  }

}