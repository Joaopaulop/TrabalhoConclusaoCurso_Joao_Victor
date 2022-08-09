import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  String? title;

  Button({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin:EdgeInsets.all(20),
        width: 200,
        height: 30,
        color:Colors.blue,
        child:Center(
            child: Text(title!,style: TextStyle(
              fontSize: 15,color: Colors.white
            ),)
        )
    );
  }

}