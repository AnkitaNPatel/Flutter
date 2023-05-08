import 'package:flutter/material.dart';

class MyProgramSeven extends StatefulWidget {
  const MyProgramSeven({super.key});

  @override
  State<MyProgramSeven> createState() => _MyProgramSevenState();
}

class _MyProgramSevenState extends State<MyProgramSeven> {
  
  List<String> mylist = [];
  bool Android = false;
  bool java = false;
  bool Dart = false;
  bool Python = false;
  bool Flutter = false;
  String? result = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PROGRAM - 7")),
      body: Container(
        child: Column(children: [
        Row(
          children: [
            Checkbox(
              value: Android,
              onChanged: ((value) {
                setState(() {
                  Android = value!;
                  result = value.toString();
                });
                if (Android) {
                  mylist.add("Android");
                } else {
                  mylist.remove("Android");
                }
              })
            ),Text("Android"),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: java,
              onChanged: ((value) {
                setState(() {
                  java = value!;
                  result = value.toString();
                });
                if (java) {
                  mylist.add("java");
                } else {
                  mylist.remove("java");
                }
              })
            ),Text("java")
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: Dart,
              onChanged: ((value) {
                setState(() {
                  Dart = value!;
                  result = value.toString();
                });
                if (Dart) {
                  mylist.add("Dart");
                } else {
                  mylist.remove("Dart");
                }
              })
            ),Text("Dart"),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: Python,
              onChanged: ((value) {
                setState(() {
                  Python = value!;
                  result = value.toString();
                });
                if (Python) {
                  mylist.add("Python");
                } else {
                  mylist.remove("Python");
                }
              })
            ),Text("python")
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: Flutter,
              onChanged: ((value) {
                setState(() {
                  Flutter = value!;
                  result = value.toString();
                });
                if (Flutter) {
                  mylist.add("Flutter");
                } else {
                  mylist.remove("Flutter");
                }
              })
            ),Text("Flutter"),
          ],
        ),
        Text("Result = $mylist"),
      ]),
      ),
    );
  }
}