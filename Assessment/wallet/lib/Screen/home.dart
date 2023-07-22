import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wallet/Screen/profile.dart';
import 'package:wallet/Screen/receive.dart';
import 'package:wallet/Screen/send.dart';
import 'package:http/http.dart' as http;
import 'package:wallet/Screen/wallet.dart';

class MyHome extends StatefulWidget {

  final String USERID;
  const MyHome({super.key, required this.USERID});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  var userData;

  void initState() {
    userAmount();
    super.initState();
  }

  Future userAmount() async{
    var URL = "https://databaseankita.000webhostapp.com/flutterproject/wallet/wallet_amount.php";
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
    String uName = userMap['username'];
    String uTotalAmount = userMap['w_total'];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: uName.text.bold.make(),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) => MyProfile(USERID:widget.USERID))
              );
            },
            icon: const Icon(
              Icons.person,
            ),
          ),
        ],
      ),
      body: Container(
        child: VStack([
          Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
            child: ElevatedButton.icon(
              onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => MyWallet(USERID:widget.USERID,USERNAME:uName,USERTOTALAMOUNT:uTotalAmount)));
              },
              icon: Icon(Icons.mail_outlined,size: 24.0,),
              label: "Wallet".text.size(20).make(),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              ),
            )
          ),
          Container(
            height: 250,
            child: HStack([
              Icon(Icons.currency_rupee_rounded,size: 50,color:Colors.blue[900]),
              uTotalAmount.text.bold.size(50).blue900.makeCentered(),
            ]).centered()
          ),
          Container(
            child: HStack([
              VxBox(
                child: VStack([
                  VxBox(
                    child: IconButton(
                      onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => MyReceive(USERID:widget.USERID)));},
                      icon:Icon(Icons.add,size: 32,color: Colors.white,)
                    )
                  ).green500.roundedFull.height(50).width(50).makeCentered(),
                  SizedBox(height: 20,),
                  "Receive".text.size(18).bold.makeCentered()
                ],).centered()
              ).white.roundedSM.height(150).width(150).shadowMax.make(),
              SizedBox(width: 25,),
              VxBox(
                child: VStack([
                  VxBox(
                    child: IconButton(
                      onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => MySend(USERID:widget.USERID)));},
                      icon:Icon(Icons.remove,size: 32,color: Colors.white,)
                    )
                  ).red500.roundedFull.height(50).width(50).makeCentered(),
                  SizedBox(height: 20,),
                  "Send".text.size(18).bold.makeCentered()
                ],).centered()
              ).white.roundedSM.height(150).width(150).shadowMax.make(),
            ]).centered(),
          )
        ]),
      ),
    );
  }
}