import 'package:flutter/material.dart';

class MyProgramNine extends StatefulWidget {
  const MyProgramNine({super.key});

  @override
  State<MyProgramNine> createState() => _MyProgramNineState();
}

class _MyProgramNineState extends State<MyProgramNine> {

  String result = "Red";
  Color colorBG = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBG,
      appBar: AppBar(title: Text("PROGRAM - 9")),
      body: Container(
        child: Column(
          children: [
            RadioListTile(
              title: Text("Red"),
              value: "Red",
              groupValue: result,
              onChanged: (((value) {
                setState(() {
                  result = value.toString();
                  colorBG = Colors.red;
                });
              }))
            ),
            RadioListTile(
              title: Text("Blue"),
              value: "Blue",
              groupValue: result,
              onChanged: (((value) {
                setState(() {
                  result = value.toString();
                  colorBG = Colors.blue;
                });
              }))
            ),
            RadioListTile(
              title: Text("Green"),
              value: "Green",
              groupValue: result,
              onChanged: (((value) {
                setState(() {
                  result = value.toString();
                  colorBG = Colors.green;
                });
              }))
            )
          ],
        )
      ),
    );
  }
}