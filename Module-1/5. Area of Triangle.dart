import 'dart:io';

void main(){
  var base, height;

  print("Enter the Base :");
  base = int.parse(stdin.readLineSync()!);

  print("Enter the Height :");
  height = int.parse(stdin.readLineSync()!);

  var bh = base * height;
  var Area = bh / 2;

  print("Area of Triangle : $Area");

}