import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;
import 'package:wallet/Screen/home.dart';

class MyReceive extends StatefulWidget {
  final String USERID;
  const MyReceive({super.key, required this.USERID});

  @override
  State<MyReceive> createState() => _MyReceiveState();
}

class _MyReceiveState extends State<MyReceive> {

  TextEditingController cRname = TextEditingController();
  TextEditingController cRmoney = TextEditingController();

  Future receiveMoneyData() async{
    var url = "https://databaseankita.000webhostapp.com/flutterproject/wallet/wallet_insert.php";
    var response = await http.post(Uri.parse(url),body:{
      "u_id": widget.USERID,
      "w_type": "Received",
      "w_receivename": cRname.text.toString(),
      "w_receivemoney": cRmoney.text.toString()
    });

    var data = json.decode(response.body);
    Map<String, dynamic> userMap = data;
    int code = userMap['code'];
    String message = userMap['message'];

    if(code == 510){
      print(message);
    }else{
      print(message);
      Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context)=> MyHome(USERID: widget.USERID)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: "Receive".text.make()),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          children: [
            TextField(
              controller: cRname,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Receive Name",
                labelText: "Receive Name",
                prefixIcon: Icon(Icons.list),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: cRmoney,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Receive Money",
                labelText: "Receive Money",
                prefixIcon: Icon(Icons.currency_rupee_rounded),
              ),
            ),
            SizedBox(height: 50,),
            ElevatedButton(
              onPressed: (){
                receiveMoneyData();
              }, 
              child: "Receive Money".text.size(20).make(),
              style: ElevatedButton.styleFrom(
                //backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              ),
            ).w48(context).h8(context).centered()
          ],
        ),
      ),
    );
  }
}