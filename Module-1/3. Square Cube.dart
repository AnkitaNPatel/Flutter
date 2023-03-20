import 'dart:io';

void main(){

  var num;

  print("Enter the number");
  num = int.parse(stdin.readLineSync()!);

  var square = num * num;
  var cube = num * num * num;

  print(" Square : $square \n Cube : $cube");

}