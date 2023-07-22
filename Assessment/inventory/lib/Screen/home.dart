import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:inventory/Screen/addproduct.dart';
import 'package:inventory/Screen/deleteproduct.dart';
import 'package:inventory/Screen/profile.dart';
import 'package:inventory/Screen/viewinventory.dart';
import 'package:inventory/Screen/viewproduct.dart';
import 'package:inventory/const/image.dart';
import 'package:velocity_x/velocity_x.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: "Inventory".text.bold.make(),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) => MyProfile())
              );
            },
            icon: const Icon(
              Icons.person,
            ),
          ),
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              height: 350,width: double.infinity,
              child: Image.asset(bgImg,fit: BoxFit.fill,),
            ),
            Container(
              child: VStack([
                Container(
                  child: HStack([
                    VxBox(
                      child: VStack([
                        VxBox(
                          child: IconButton(
                            onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => AddProduct()));},
                            icon:Icon(Icons.add,size: 32,color: Colors.white,)
                          )
                        ).green500.roundedFull.height(50).width(50).makeCentered(),
                        SizedBox(height: 20,),
                        "Add Product".text.size(18).bold.makeCentered()
                      ],).centered()
                    ).white.roundedSM.height(150).width(150).shadowMax.make(),
                    SizedBox(width: 20,),
                    VxBox(
                      child: VStack([
                        VxBox(
                          child: IconButton(
                            onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => DeleteProduct()));},
                            icon:Icon(Icons.delete,size: 32,color: Colors.white,)
                          )
                        ).red500.roundedFull.height(50).width(50).makeCentered(),
                        SizedBox(height: 20,),
                        "Delete Product".text.size(18).bold.makeCentered()
                      ],).centered()
                    ).white.roundedSM.height(150).width(150).shadowMax.make(),
                  ]),
                ),
                SizedBox(height: 20,),
                Container(
                  child: HStack([
                    VxBox(
                      child: VStack([
                        VxBox(
                          child: IconButton(
                            onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => ViewProduct()));},
                            icon:Icon(Icons.search,size: 32,color: Colors.white,)
                          )
                        ).blue500.roundedFull.height(50).width(50).makeCentered(),
                        SizedBox(height: 20,),
                        "View Product".text.size(18).bold.makeCentered()
                      ],).centered()
                    ).white.roundedSM.height(150).width(150).shadowMax.make(),
                    SizedBox(width: 20,),
                    VxBox(
                      child: VStack([
                        VxBox(
                          child: IconButton(
                            onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => ViewInventory()));},
                            icon:Icon(Icons.currency_rupee,size: 32,color: Colors.white,)
                          )
                        ).blue500.roundedFull.height(50).width(50).makeCentered(),
                        SizedBox(height: 20,),
                        "View Inventory".text.size(18).bold.makeCentered()
                      ],).centered()
                    ).white.roundedSM.height(150).width(150).shadowMax.make(),
                  ]),
                ),
              ]).centered(),
            )
          ],
        ),
      ),
    );
  }
}