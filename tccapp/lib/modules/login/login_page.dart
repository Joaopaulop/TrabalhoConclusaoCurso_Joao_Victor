import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tccapp/db/animais.dart';
import 'package:tccapp/modules/cadastro/cadastro_page.dart';
import 'package:tccapp/modules/home/home_page.dart';
import 'package:tccapp/widgets/button.dart';
import 'package:tccapp/widgets/text_field_app.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final senhaController = TextEditingController();

  AnimaisDAO animaisdao = AnimaisDAO();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    addDB();

  }

  addDB() async{
   await animaisdao.insertDB();
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'BEM-VINDO'),
            TextfieldApp(controller: emailController,),
            SizedBox(height: 10,),
            TextfieldApp(controller: senhaController),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  HomePage()),
                );
              },
              child: Button(title: 'Login',),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  CadastroPage()),
                );
              },
              child:  Button(title: 'Registrar',),
            ),

          ],
       ),
     );
  }
  
}