import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintTextt;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  const MyTextField({ Key? key, required this.hintTextt, this.obscureText =false, this.keyboardType, this.suffixIcon }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Container( 
                padding: const EdgeInsets.only(left: 24,right: 24,top: 6),
                child: SizedBox( 
                  width: double.infinity,
                    height: 45,
                    child: TextFormField(
                      //controller: ,
                      keyboardType: TextInputType.text,
                      decoration:  InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 8.0, top: 8),
                        hintText: hintTextt,
                        hintStyle: const TextStyle(
                          fontSize: 16,
                          color: Color(0xffc9c9c9),
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffe8e8e9),
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffe8e8e9),
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffe8e8e9),
                          ),
                        ),
                      ),
                    ),
                  ),
              );
  }
}