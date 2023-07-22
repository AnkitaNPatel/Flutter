import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory/Screen/home.dart';
import 'package:inventory/Screen/login.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome()
    );
  }
}