import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextfieldApp extends StatelessWidget{
  TextEditingController controller;

  TextfieldApp({required this.controller});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin:EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        color:Colors.grey,
        child:TextField(
          controller: controller,
          style: TextStyle(
              color: Colors.black
          ),
        )
    );
  }

}