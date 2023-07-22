import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {

  String img = "https://thumbs.dreamstime.com/b/aster-flowers-art-design-26968847.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ankita",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold )),
                        SizedBox(height: 5,),
                        Text("+91 9429379273",style: TextStyle(fontSize: 16,color: Colors.grey)),
                      ],
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}