import 'package:flutter/material.dart';

class MyLable extends StatelessWidget {
  final double fontsize;
  final String text;
  const MyLable({ Key? key, required this.fontsize, required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(alignment: Alignment.bottomLeft,
              padding:  EdgeInsets.only(left: 24),
              child:  Text(text,style:  TextStyle(fontSize: fontsize,color: const Color(0xFF808189)),),
            );
  }
}