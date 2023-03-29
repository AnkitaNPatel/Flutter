import 'dart:ffi';
import 'dart:io';

void main(){

  var x, y;

  print("Enter the value X :");
  x = int.parse(stdin.readLineSync()!);

  print("Enter the value Y :");
  y = int.parse(stdin.readLineSync()!);

  var v = x + y;

  var x1 = v - x;
  
  var y1 = v - y;

  print("X : $x  Y : $y Swap value X : $x1 Y : $y1");

}