import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final double height;
  final double width;
  final double radius;
  final Color buttonColor;
  final double? r_l_padding;
  const MainButton({ Key? key, required this.text, this.textColor = Colors.white,
   required this.height, this.width = double.infinity, required this.radius, 
   required this.buttonColor, this.r_l_padding=24 }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding:  EdgeInsets.fromLTRB(r_l_padding??17, 15, r_l_padding??17, 1),
              child: MaterialButton(
                minWidth: double.infinity,
                height: height,
                onPressed: (){},
                color:  buttonColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
                child:  Center(child: Text(text, style: const TextStyle(fontSize: 16,color: Colors.white),)),
              ),
            );
  }
}