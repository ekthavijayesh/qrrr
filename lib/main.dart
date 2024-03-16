import 'package:flutter/material.dart';
import 'package:qrscanner/reg1.dart';

import 'Next.dart';
import 'loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController rollno = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:LoginScreen());
  }
}
