import 'package:flutter/material.dart';

class MyProgramSix extends StatefulWidget {
  const MyProgramSix({super.key});

  @override
  State<MyProgramSix> createState() => _MyProgramSixState();
}

class _MyProgramSixState extends State<MyProgramSix> {

  TextEditingController numbercontroller = TextEditingController();
  String? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PROGRAM - 6")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 10,),
            TextField(
              controller: numbercontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Enter Number N",
                labelText: "Enter Number N",
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  int num = int.parse(numbercontroller.text.toString());
                  //int a, reverse = 0, remainder;
                  /*while (num != 0) {
                    remainder = num % 10;
                    reverse = reverse * 10 + remainder;
                  }*/
                  result = ("$num");
                });
              }, 
              child: Text("Submit")
            ),
            SizedBox(height: 10,),
            Text("$result")
          ],
        )
      ),
    );
  }
}