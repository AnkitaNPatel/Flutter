import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:inventory/Screen/forgotpassword.dart';
import 'package:inventory/Screen/home.dart';
import 'package:inventory/Screen/signup.dart';
import 'package:velocity_x/velocity_x.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                children: [
                  SizedBox(height: 100,),
                  "Inventory".text.size(50).italic.bold.blue800.makeCentered(),
                  SizedBox(height: 100,),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "@Email",
                      labelText: "Email",
                      prefixIcon: Icon(Icons.mail),
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: "Password",
                      labelText: "Password",
                      prefixIcon: Icon(Icons.key),
                    ),
                    obscureText: true,
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
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> MyHome())
                      );
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
                        MaterialPageRoute(builder: (context)=> SignUp())
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
}