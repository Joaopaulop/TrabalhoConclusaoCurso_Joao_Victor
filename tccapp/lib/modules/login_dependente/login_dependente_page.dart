
import 'package:flutter/material.dart';
import 'package:tccapp/models/dependentes.dart';
import 'package:tccapp/modules/home/home_page.dart';
import 'package:tccapp/modules/qrCode_module/qrcode_page.dart';
import 'package:tccapp/modules/retorno_carta/retorno_carta_page.dart';
import 'package:tccapp/widgets/button.dart';

class LoginDependentePage extends StatefulWidget {
  const LoginDependentePage({Key? key}) : super(key: key);

  @override
  State<LoginDependentePage> createState() => _LoginDependenteState();
}

class _LoginDependenteState extends State<LoginDependentePage> {
  List<Dependentes> dependentes = [Dependentes(nome: 'João'),Dependentes(nome: 'Victor'),Dependentes(nome: 'Lucas'),Dependentes(nome: 'Ana')];

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
              'Bem-vindo, quem e voce?'),
          ListView.builder(
              shrinkWrap: true ,
              physics: NeverScrollableScrollPhysics(),
              itemCount: dependentes.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  QrCodePage()),
                    );
                  },
                  child:Container(
                      margin:const EdgeInsets.all(20),
                      child:Row(
                        children: [
                          Icon(Icons.account_circle_outlined),
                          SizedBox(width: 5,),
                          Text(dependentes[index].nome),

                        ],
                      )
                  )
                );
              }),

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

