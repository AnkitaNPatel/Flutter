import 'dart:io';

void main(){

  var num1,num2;

  print("Enter number :");
  num1 = int.parse(stdin.readLineSync()!);
  print("Enter number :");
  num2 = int.parse(stdin.readLineSync()!);

  var addition = num1 + num2;

  var subtraction = num1 - num2;

  var multiplication = num1 * num2;

  var division = num1 / num2;

  print(" Addition : $addition\n Subtraction : $subtraction\n Multiplication : $multiplication\n Division : $division");

}