import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wallet/Screen/login.dart';
import 'package:http/http.dart' as http;

class MyProfile extends StatefulWidget {

  final String USERID;
  const MyProfile({super.key, required this.USERID});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {

  var userData;

  void initState() {
    userDetail();
    super.initState();
  }

  Future userDetail() async{
    var URL = "https://databaseankita.000webhostapp.com/flutterproject/wallet/user.php";
    var response = await http.post(Uri.parse(URL),body: {
      "u_id": widget.USERID,
    });
    if(response.statusCode == 200){
      setState(() {
        userData = jsonDecode(response.body);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> userMap = userData;
    String uFname = userMap['u_fname'];
    String uLname = userMap['u_lname'];
    String uEmail = userMap['u_email'];
    String uMobile = userMap['u_mobile'];
    String uName = "$uFname $uLname";

    return Scaffold(
      appBar: AppBar(title: "Profile".text.make()),
      body: Container(
        child: VStack([
          SizedBox(height: 20),
          VxBox(
            child: Icon(Icons.person,size:130,color: Colors.grey,)
          ).gray300.roundedFull.height(150).width(150).makeCentered(),
          SizedBox(height: 20),
          uName.text.size(20).bold.makeCentered(),
          SizedBox(height: 30),
          "Mobile :   +91$uMobile".text.size(20).bold.make(),
          SizedBox(height: 20),
          "Emaile :   $uEmail".text.size(20).bold.make(),
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


  /*Future userDetail() async{
    var URL = "https://databaseankita.000webhostapp.com/flutterproject/wallet/user.php";
    var response = await http.post(Uri.parse(URL),body: {
      "u_email": text.text.toString(),
    });
    var data = json.decode(response.body);
    Map<String, dynamic> userMap = data;

    String ufname = userMap['u_fname'];
    String ulname = userMap['u_lname'];
    final String uname = "$ufname $ulname";
  }*/
