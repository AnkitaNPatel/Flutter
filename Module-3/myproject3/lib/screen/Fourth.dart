import 'package:flutter/material.dart';

class MyFourth extends StatelessWidget {
  
  List<String> cityList = [
    "Gandhinagar",
    "Ahmedabad",
    "Mehsana",
    "Vadodara",
    "Surat"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PROGRAM - 4")),
      body: Center(
        child: ElevatedButton(
          onPressed:(){
            showDialog(
              context: context, 
              builder: (BuildContext context)=>AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
                title: Text("Major cities of Gujarat"),
                content: Container(
                  width: double.minPositive,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: cityList.length,
                    itemBuilder: (context,index){

                    }
                  ),
                ),
              )
            );
          } , 
          child: Text("Open Dialog and choose City Name")
        )
      ),
    );
  }
}