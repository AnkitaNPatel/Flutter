import 'package:flutter/material.dart';

class MyProgramThree extends StatefulWidget {
  const MyProgramThree({super.key});

  @override
  State<MyProgramThree> createState() => _MyProgramThreeState();
}

class _MyProgramThreeState extends State<MyProgramThree> {
  TextEditingController num1Controller = new TextEditingController();
  TextEditingController num2Controller = new TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PROGRAM - 3")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 20),
            TextField(
              controller: num1Controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Number 1",
                labelText: "Number 1",
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: num2Controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Number 2",
                labelText: "Number 2",
              ),
            ),
            SizedBox(height: 10),
            RadioListTile(
              title: Text("Addition"),
              value: "addition", 
              groupValue: result, 
              onChanged: (value){
                setState(() {
                    int calculat = int.parse(num1Controller.text) + int.parse(num2Controller.text);
                    result = calculat.toDouble();
                });
              },
            ),
            RadioListTile(
              title: Text("Substraction"),
              value: "substraction",
              groupValue: result, 
              onChanged: (value){
                setState(() {
                    int calculat = int.parse(num1Controller.text) - int.parse(num2Controller.text);
                    result = calculat.toDouble();
                });
              },
            ),
            RadioListTile(
              title: Text("Multiply"),
              value: "multiply", 
              groupValue: result, 
              onChanged: (value){
                setState(() {
                    int calculat = int.parse(num1Controller.text) * int.parse(num2Controller.text);
                    result = calculat.toDouble();
                });
              },
            ),
            RadioListTile(
              title: Text("Division"),
              value: "division", 
              groupValue: result, 
              onChanged: (value){
                setState(() {
                    int calculat = int.parse(num1Controller.text) ~/ int.parse(num2Controller.text);
                    result = calculat.toDouble();
                });
              },
            ),
            Text('Result : $result', style: TextStyle(fontSize: 20),)
          ],
        )
      ),
    );
  }
}