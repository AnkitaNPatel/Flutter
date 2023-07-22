import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyChats extends StatelessWidget {

  List<String> names = [
    "Ankita","Nikesh","Parth","Mayur","Viral","Rupal","Julita","Kinjal"
  ];
  String img = "https://thumbs.dreamstime.com/b/aster-flowers-art-design-26968847.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index){
            return Container(
              height: 80,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(img),
                        fit: BoxFit.cover
                      ),
                    )
                  ),
                  SizedBox(width: 20,),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(names[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold )),
                        SizedBox(height: 5,),
                        Text("+91 9429379273",style: TextStyle(fontSize: 16,color: Colors.grey)),
                      ],
                    )
                  )
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}