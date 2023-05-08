import 'dart:math';

import 'package:flutter/material.dart';

 class MyProgramFour extends StatefulWidget {
  const MyProgramFour({super.key});

  @override
  State<MyProgramFour> createState() => _MyProgramFourState();
}

class _MyProgramFourState extends State<MyProgramFour> {
  final Random _random = Random();
  Color _color = Colors.white;
  void changeColor(){
    setState(() {
      _color = Color.fromRGBO(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextDouble(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("PROGRAM - 4")),
        body: Center(
          child: Container(
            height: double.infinity,
          width: double.infinity,
          color: _color,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){changeColor();}, 
                  child: Text("Change Color")
                ),
              ],
            ),
          ),
        ),
      );
  }
}