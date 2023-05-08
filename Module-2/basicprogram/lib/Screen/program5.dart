import 'package:flutter/material.dart';

class MyProgramFive extends StatefulWidget {
  const MyProgramFive({super.key});

  @override
  State<MyProgramFive> createState() => _MyProgramFiveState();
}

class _MyProgramFiveState extends State<MyProgramFive> {
  double textFontSize = 20;
  void plueFontSize(){
    setState(() {
      textFontSize += 2;
    });
  }
  void minusFontSize(){
    setState(() {
      textFontSize -= 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PROGRAM - 5")),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              FloatingActionButton(
                onPressed: (){plueFontSize();},
                child: Icon(Icons.add),
              ),
              SizedBox(height: 40,),
              Text("Ankita",style: TextStyle(fontSize: textFontSize),),
              SizedBox(height: 40,),
              FloatingActionButton(
                onPressed: (){minusFontSize();},
                child: Icon(Icons.remove),
              ),
            ],
          ),
        ),
      ),
    );
  }
}