import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyGallery extends StatelessWidget {
  
  List<String> images = [
    "https://thumbs.dreamstime.com/b/aster-flowers-art-design-26968847.jpg",
    "https://thumbs.dreamstime.com/b/aster-flowers-art-design-26968847.jpg",
    "https://thumbs.dreamstime.com/b/aster-flowers-art-design-26968847.jpg",
    "https://thumbs.dreamstime.com/b/aster-flowers-art-design-26968847.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
          ), 
          itemBuilder: (BuildContext context, int index){
            return Container(
              child: Image.network(images[index]),
            );
          }
        ),
      ),
    );
  }
}