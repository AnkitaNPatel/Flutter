import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wallet/Screen/forgotpassword.dart';
import 'package:wallet/Screen/home.dart';
import 'package:wallet/Screen/signup.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {

  bool passwordVisible = false;

  TextEditingController clEmail = TextEditingController();
  TextEditingController clPassword = TextEditingController();

  void initState(){
    super.initState();
    passwordVisible=true;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                children: [
                  SizedBox(height: 100,),
                  "Wallet".text.size(50).italic.bold.blue800.makeCentered(),
                  SizedBox(height: 100,),
                  TextField(
                    controller: clEmail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Email",
                      labelText: "Email",
                      prefixIcon: Icon(Icons.mail),
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    controller: clPassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: "Password",
                      labelText: "Password",
                      prefixIcon: Icon(Icons.key),
                      suffixIcon: IconButton(
                        onPressed: (){setState(() {
                          passwordVisible = !passwordVisible;
                        });}, 
                        icon: Icon(passwordVisible ? Icons.visibility : Icons.visibility_off)
                      )
                    ),
                    obscureText: passwordVisible,
                  ),
                  SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> ForgotPassword())
                        );
                      }, 
                      child: "Forgot Password?".text.bold.uppercase.make(),
                    ),
                  ),
                  SizedBox(height: 30,),
                  ElevatedButton(
                    onPressed: (){
                      userLogin();
                    }, 
                    child: "Login".text.size(18).make(),
                    style: 
                      ElevatedButton.styleFrom(
                        fixedSize: Size(double.maxFinite, 40),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                      ),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "Don`t have an account?".text.make(),
                  TextButton(
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> Signup())
                      );
                    }, 
                    child: "Sign up".text.bold.uppercase.make(),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            )
          ],
        )
      )
    );
  }
  Future userLogin() async{
    var URL = "https://databaseankita.000webhostapp.com/flutterproject/wallet/login.php";
    var response = await http.post(Uri.parse(URL),body: {
      "u_email": clEmail.text.toString(),
      "u_password": clPassword.text.toString()
    });

    var data = json.decode(response.body);
    Map<String, dynamic> userMap = data;

    int code = userMap['code'];
    String userId = userMap['u_id'];

    if(code == 510){
      print("Please valid Email and Password");
    }else{
      print("Success");
      Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context)=> MyHome(USERID: userId)));
    }

  }
}