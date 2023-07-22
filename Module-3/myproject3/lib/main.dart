import 'package:flutter/material.dart';
import 'package:myproject3/screen/Eleventh.dart';
import 'package:myproject3/screen/First.dart';
import 'package:myproject3/screen/Fourth.dart';
import 'package:myproject3/screen/Second.dart';
import 'package:myproject3/screen/Third.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyEleventh(),
    );
  }
}