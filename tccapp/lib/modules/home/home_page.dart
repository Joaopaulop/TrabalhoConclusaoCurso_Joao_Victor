import 'package:flutter/material.dart';
import 'package:tccapp/modules/cadastro/cadastro_page.dart';
import 'package:tccapp/modules/cadastro_dependentes/cadastro_dependentes.dart';
import 'package:tccapp/modules/login/login_page.dart';
import 'package:tccapp/modules/login_dependente/login_dependente_page.dart';
import 'package:tccapp/modules/responsavel/responsavel_page.dart';
import 'package:tccapp/widgets/button.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  LoginDependentePage()),
                );
              },
              child: Button(title: 'Dependente',),
            ),

            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  ResponsavelPage()),
                );
              },
              child:Button(title: 'Responsavel',)
            ),
            SizedBox(height: 10,),
            GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  CadastroPage()),
                  );
                },
                child:Button(title: 'Cadastro',)
            ),
            SizedBox(height: 10,),
            GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  LoginPage()),
                  );
                },
                child:  Button(title: 'Sair',)
            )

          ],
        )
      ),
    );
  }

}