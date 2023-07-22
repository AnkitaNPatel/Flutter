import 'package:flutter/material.dart';

class MyThird extends StatelessWidget {
  const MyThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PROGRAM - 3")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showDialog<String>(
            context: context, 
            builder: (BuildContext context) => AlertDialog(
              title: Text("AlertDialog Title"),
              content: Text("AlertDialog Description"),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context,"Neutral"), 
                  child: Text("Neutral")
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context,"No"), 
                  child: Text("No")
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context,"Yes"), 
                  child: Text("Yes")
                ),
              ],
            )
          ), 
          child: Text("show Dialog")
        ),
      ),
    );
  }
}