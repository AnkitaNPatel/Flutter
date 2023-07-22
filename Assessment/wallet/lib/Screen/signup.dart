import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wallet/Screen/login.dart';
import 'package:http/http.dart' as http;

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  TextEditingController cfname = TextEditingController();
  TextEditingController clname = TextEditingController();
  TextEditingController cemail = TextEditingController();
  TextEditingController cmobile = TextEditingController();
  TextEditingController cpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: "SignUp".text.make()),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          children: [
            TextField(
              controller: cfname,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "First Name",
                labelText: "First Name",
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 15,),
            TextField(
              controller: clname,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Last Name",
                labelText: "Last Name",
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 15,),
            TextField(
              controller: cemail,
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
              controller: cmobile,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Mobile",
                labelText: "Mobile",
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            SizedBox(height: 15,),
            TextField(
              controller: cpassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                hintText: "Password",
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye)
              ),
              obscureText: true,
            ),
            SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                hintText: "Confirm Password",
                labelText: "Confirm Password",
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: (){
                userInsertData();
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> MyLogin())
                );
              }, 
              child: "Signup".text.size(18).make(),
              style: 
                ElevatedButton.styleFrom(
                  fixedSize: Size(double.maxFinite, 40),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
            )
          ],
        ),
      ),
    );
  }
  void userInsertData(){
    var url = "https://databaseankita.000webhostapp.com/flutterproject/wallet/user_insert.php";
    http.post(Uri.parse(url),body:{
      "u_fname": cfname.text.toString(),
      "u_lname": clname.text.toString(),
      "u_email": cemail.text.toString(),
      "u_mobile": cmobile.text.toString(),
      "u_password": cpassword.text.toString()
    });
  }
}