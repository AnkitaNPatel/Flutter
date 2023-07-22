import 'package:flutter/material.dart';

class MyFirst extends StatelessWidget {
  const MyFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PROGRAM - 1")),
      body: Center(
        child: Text("PROGRAM - 1"),
      ),
    );
  }
}