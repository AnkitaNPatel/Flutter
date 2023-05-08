import 'package:basicprogram/Screen/program1.dart';
import 'package:basicprogram/Screen/program2.dart';
import 'package:basicprogram/Screen/program3.dart';
import 'package:basicprogram/Screen/program4.dart';
import 'package:basicprogram/Screen/program5.dart';
import 'package:basicprogram/Screen/program6.dart';
import 'package:basicprogram/Screen/program7.dart';
import 'package:basicprogram/Screen/program8.dart';
import 'package:basicprogram/Screen/program9.dart';
import 'package:basicprogram/Screen/program10.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyProgramTwo(),
    );
  }
}