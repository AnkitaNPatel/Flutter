import 'package:flutter/material.dart';

class MyProgramTen extends StatefulWidget {
  const MyProgramTen({super.key});

  @override
  State<MyProgramTen> createState() => _MyProgramTenState();
}

class _MyProgramTenState extends State<MyProgramTen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PROGRAM - 10")),
      body: Center(
        child: Text("PROGRAM - 10"),
      ),
    );
  }
}