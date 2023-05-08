import 'package:flutter/material.dart';

class MyProgramTwo extends StatefulWidget {
  const MyProgramTwo({super.key});

  @override
  State<MyProgramTwo> createState() => _MyProgramTwoState();
}

class _MyProgramTwoState extends State<MyProgramTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PROGRAM - 2")),
      body: Center(
        child: Text("PROGRAM - 2"),
      ),
    );
  }
}