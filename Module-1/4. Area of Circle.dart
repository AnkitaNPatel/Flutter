import 'dart:io';

void main(){

  var pie, r;

  pie = 3.14;

  print("Enter the Radius of Cicle:");
  r = int.parse(stdin.readLineSync()!);

  var Area = pie * r * r;

  print("Area of Circle : $Area");

}