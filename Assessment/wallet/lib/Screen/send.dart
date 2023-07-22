import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;
import 'package:wallet/Screen/home.dart';

class MySend extends StatefulWidget {
  final String USERID;
  const MySend({super.key, required this.USERID});

  @override
  State<MySend> createState() => _MySendState();
}

class _MySendState extends State<MySend> {

  TextEditingController cSname = TextEditingController();
  TextEditingController cSmoney = TextEditingController();

  Future sendMoneyData() async{
    var url = "https://databaseankita.000webhostapp.com/flutterproject/wallet/wallet_insert.php";
    var response = await http.post(Uri.parse(url),body:{
      "u_id": widget.USERID,
      "w_type": "Send",
      "w_sendname": cSname.text.toString(),
      "w_sendmoney": cSmoney.text.toString()
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
      appBar: AppBar(title: "Send".text.make()),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          children: [
            TextField(
              controller: cSname,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Send Name",
                labelText: "Send Name",
                prefixIcon: Icon(Icons.list),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: cSmoney,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Send Money",
                labelText: "Send Money",
                prefixIcon: Icon(Icons.currency_rupee_rounded),
              ),
            ),
            SizedBox(height: 50,),
            ElevatedButton(
              onPressed: (){
                sendMoneyData();
              }, 
              child: "Send Money".text.size(20).make(),
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