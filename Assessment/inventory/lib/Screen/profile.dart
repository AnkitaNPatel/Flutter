import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:inventory/Screen/login.dart';
import 'package:inventory/const/image.dart';
import 'package:velocity_x/velocity_x.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: "Profile".text.make()),
      body: Container(
        child: VStack([
          SizedBox(height: 20),
          VxBox(
            child: Icon(Icons.person,size:130,color: Colors.grey,)
          ).gray300.roundedFull.height(150).width(150).makeCentered(),
          SizedBox(height: 20),
          "Ankita Patel".text.size(20).bold.makeCentered(),
          SizedBox(height: 30),
          "Mobile :   +919429379273".text.size(20).bold.make(),
          SizedBox(height: 20),
          "Emaile :   patelankita994@gmail.com".text.size(20).bold.make(),
          SizedBox(height: 50,),
          ElevatedButton(
            onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=> MyLogin())
              );
            }, 
            child: "Logout".text.size(20).make(),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
            ),
          ).w40(context).h8(context).centered()
        ]),
      ),
    );
  }
}