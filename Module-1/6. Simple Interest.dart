import 'dart:io';

void main(){

  var p, r, t;

  print("Enter the Principal Amount :");
  p = int.parse(stdin.readLineSync()!);

  print("Enter the Rate of Interest :");
  r = int.parse(stdin.readLineSync()!);

  print("Enter the Year :");
  t = int.parse(stdin.readLineSync()!);

  var prt = p * r * t;
  var si = prt / 100;

  print("Simple Interest : $si");

}