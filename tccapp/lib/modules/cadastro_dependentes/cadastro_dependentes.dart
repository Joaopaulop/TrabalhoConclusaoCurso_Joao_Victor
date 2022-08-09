import 'package:flutter/material.dart';
import 'package:tccapp/modules/responsavel/responsavel_page.dart';
import 'package:tccapp/widgets/button.dart';
import 'package:tccapp/widgets/text_field_app.dart';

class CadastroDependentes extends StatelessWidget{
  final nomeController = TextEditingController();
  final cidController = TextEditingController();
  final imgController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'Insira os dados relevantes ao dependente'),
              SizedBox(width: 20,),
              TextfieldApp(controller: nomeController,),
              SizedBox(height: 10,),
              TextfieldApp(controller: cidController,),
              SizedBox(height: 10,),
              Row(
                children:  [
                  Text(
                      'Imagem'),
                  SizedBox(width: 20,),
                ],
              ),
              Text(
                  'Pre-visualizacao'),
              Icon(Icons.photo),
              SizedBox(width: 20,),
              GestureDetector(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  ResponsavelPage()),
                  );
                },
                child: Button(title: 'Cadastrar',),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  ResponsavelPage()),
                  );
                },
                child: Button(title: 'Sair',),
              )


            ],
          )
      ),
    );
  }


}