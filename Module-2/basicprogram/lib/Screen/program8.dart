import 'package:flutter/material.dart';

class MyProgramEight extends StatefulWidget {
  const MyProgramEight({super.key});

  @override
  State<MyProgramEight> createState() => _MyProgramEightState();
}

class _MyProgramEightState extends State<MyProgramEight> {

  String img = "https://thumbs.dreamstime.com/b/aster-flowers-art-design-26968847.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PROGRAM - 8")),
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(img),
                          fit: BoxFit.cover
                        ),
                        border: Border.all(color: Colors.black,width: 5),
                        borderRadius: BorderRadius.circular(20)
                      ),height: 100,width: 100,
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(img),
                          fit: BoxFit.cover
                        ),
                        border: Border.all(color: Colors.black,width: 5),
                        borderRadius: BorderRadius.circular(20)
                      ),height: 100,width: 100,
                    ),
                  ],
                ),
              ),
              Container(
                child: Text("Images",style: TextStyle(fontSize: 30, color: Colors.blue)),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(img),
                          fit: BoxFit.cover
                        ),
                        border: Border.all(color: Colors.black,width: 5),
                        borderRadius: BorderRadius.circular(20)
                      ),height: 100,width: 100,
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(img),
                          fit: BoxFit.cover
                        ),
                        border: Border.all(color: Colors.black,width: 5),
                        borderRadius: BorderRadius.circular(20)
                      ),height: 100,width: 100,
                    ),
                  ],
                ),
              ),
            ]
          ),
      ),
    );
  }
}