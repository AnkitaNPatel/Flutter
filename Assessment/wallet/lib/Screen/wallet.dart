import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;

class MyWallet extends StatefulWidget {
  
  final String USERID,USERNAME,USERTOTALAMOUNT;
  const MyWallet({super.key, required this.USERID, required this.USERNAME, required this.USERTOTALAMOUNT});

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {

  void initState() {
    walletList();
    super.initState();
  }

  Future<List> walletList() async{
    var url = "https://databaseankita.000webhostapp.com/flutterproject/wallet/wallet.php";
    var response = await http.post(Uri.parse(url),body:{
      "u_id": widget.USERID
    });
    return jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.USERNAME.text.make(),
        actions: [
          widget.USERTOTALAMOUNT.text.bold.size(20).makeCentered(),
          "   ".text.bold.size(20).makeCentered()
        ]
      ),
      body: FutureBuilder<List>(
        future: walletList(),
        builder: (context, snapshot) {
          if(snapshot.hasError){
            print("Error");
          }
          if(snapshot.hasData){
            return Items(list: snapshot.data!);
          }
          else
          {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
class Items extends StatelessWidget {

  List list;
  Items({required this.list});
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list == null?0:list.length,
      itemBuilder: (cxt,i){
        return Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Stack(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(list[i]["w_receivename"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                          Text(list[i]["w_receivemoney"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.green[800]),)
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(list[i]["w_sendname"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                          Text(list[i]["w_sendmoney"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.red[900]),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(list[i]["w_date"],style: TextStyle(fontSize: 20,color: Colors.grey),),
                    Text(list[i]["w_type"],style: TextStyle(fontSize: 20,color: Colors.grey),),
                  ],
                ),
              ),
              Container(height:1,width:double.infinity,color:Colors.grey),
            ],
          ),
        ); 
      }
    );
  }
}