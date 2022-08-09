import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tccapp/modules/responsavel/responsavel_page.dart';
import 'package:tccapp/widgets/button.dart';

class InserirBusca extends StatelessWidget{
  final descricaoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Insira aqui os dados de busca a serem cadastrados'),
            SizedBox(width: 20,),
            Row(
              children: const [
                Text(
                    'Imagem'),
                SizedBox(width: 20,),
                Icon(Icons.camera_alt_outlined)
              ],
            ),
            Row(
              children: const [
                Text(
                    'Audio'),
                SizedBox(width: 20,),
                Icon(Icons.info)
              ],
            ),
            SizedBox(width: 20,),
            Text(
                'Descricao'),
            TextField(
              controller: descricaoController,
              maxLines: 4,
            ),
            SizedBox(width: 20,),
            GestureDetector(
              onTap:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  ResponsavelPage()),
                );
              },
              child: Button(title: 'Salvar',),
            ),

            Row(
              children: [
                GestureDetector(
                  onTap:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  ResponsavelPage()),
                    );
                  },
                  child:Button(title: 'Sair',),
                ),
                GestureDetector(
                  onTap:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  ResponsavelPage()),
                    );
                  },
                  child:Button(title: 'Adicionar dependente',),
                ),


              ],
            )
          ],
        )
      ),
    );
  }
  
  
}