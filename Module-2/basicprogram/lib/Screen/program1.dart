import 'package:flutter/material.dart';

class MyProgramOne extends StatefulWidget {
  const MyProgramOne({super.key});

  @override
  State<MyProgramOne> createState() => _MyProgramOneState();
}

class _MyProgramOneState extends State<MyProgramOne> {
  TextEditingController numController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PROGRAM - 1")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: numController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Number 1",
                labelText: "Number 1",
              ),
            ),
          ],
        )
      ),
    );
  }
}