import 'dart:io';

void main(){

  var name,bod,age,address;

  print("Enter your Name :");
  name = stdin.readLineSync()!;
  print("Enter your Birth date :");
  bod = stdin.readLineSync()!;
  print("Enter your Age :");
  age = stdin.readLineSync()!;
  print("Enter your Address :");
  address = stdin.readLineSync()!;

  print("your Name :"+name +"\nyour Birth date :"+ bod +"\nyour Age :"+ age +"\nyour Address :"+ address);
}