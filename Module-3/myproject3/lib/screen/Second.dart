import 'package:flutter/material.dart';

class MySecond extends StatelessWidget {
  const MySecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PROGRAM - 2")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showDialog<String>(
            context: context, 
            builder: (BuildContext context) => AlertDialog(
              title: Text("AlertDialog Title"),
              content: Text("AlertDialog Description"),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context,"Cancel"), 
                  child: Text("Cancel")
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context,"OK"), 
                  child: Text("OK")
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