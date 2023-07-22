import 'package:flutter/material.dart';

class MyFirst extends StatelessWidget {
  const MyFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.all(10),
          width: 350,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 255, 255, 255)
          ),
          child: TextFormField(decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "  Search in",
            hintStyle: TextStyle(color: Colors.grey),
            icon: Icon(Icons.search)
          )),
        ),
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(
                value: 0,
                child: Text("My Account"),
                ),
                PopupMenuItem(
                value: 1,
                child: Text("Settings"),
                ), 
                 PopupMenuItem(
                value: 2,
                child: Text("Logout"),
                ),
            ];
          },)
        ],
      ),
      body: Center(
        child: Text("PROGRAM - 1"),
      ),
    );
  }
}