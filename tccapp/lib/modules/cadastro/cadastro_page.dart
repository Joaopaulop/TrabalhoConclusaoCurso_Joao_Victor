import 'package:flutter/material.dart';
import 'package:tccapp/modules/home/home_page.dart';
import 'package:tccapp/widgets/button.dart';
import 'package:tccapp/widgets/text_field_app.dart';

class CadastroPage extends StatelessWidget{
  final emailController = TextEditingController();
  final nomeController = TextEditingController();
  final escolaridadeController = TextEditingController();
  final senhaController = TextEditingController();
  final senhaConfirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Text('Email'),
            TextfieldApp(controller: emailController,),
            SizedBox(height: 10,),
            Text('Nome'),
            TextfieldApp(controller: nomeController,),
            SizedBox(height: 10,),
            Text('Escolaridade'),
            TextfieldApp(controller: escolaridadeController,),
            SizedBox(height: 10,),
            Text('Senha'),
            TextfieldApp(controller: senhaController),
            SizedBox(height: 10,),
            Text('Confirmar senha'),
            TextfieldApp(controller: senhaConfirmController),
            GestureDetector(
              onTap:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  HomePage()),
                );
              },
              child: Button(title: 'Cadastrar',),
            ),

            SizedBox(height: 10,),
            GestureDetector(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  HomePage()),
                  );
                },
                child: Button(title: 'Sair',)
            ),

          ],
        ),
      )
    );
  }

}