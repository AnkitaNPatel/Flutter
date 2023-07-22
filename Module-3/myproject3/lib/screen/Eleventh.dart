import 'package:flutter/material.dart';
import 'package:myproject3/screen/Chats.dart';
import 'package:myproject3/screen/First.dart';
import 'package:myproject3/screen/Gallery.dart';
import 'package:myproject3/screen/Profile.dart';
import 'package:myproject3/screen/Second.dart';
import 'package:myproject3/screen/Third.dart';

class MyEleventh extends StatelessWidget {
  const MyEleventh({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.chat)),
              Tab(icon: Icon(Icons.photo)),
              Tab(icon: Icon(Icons.person)),
            ]
          ),
          title: Text("PROGRAM - 11")
        ),
        body: TabBarView(
          children: [
            MyChats(),
            MyGallery(),
            MyProfile()
          ]
        )
      )
    );
  }
}