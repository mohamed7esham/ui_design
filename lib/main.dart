// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import 'screens/on_boarding.dart';
import 'screens/sign_in.dart';
import 'screens/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: const OnBoarding(),
    );
  }
}

