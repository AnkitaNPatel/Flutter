import 'dart:io';

void main(){

  var english, maths, hindi, science, computer;

  print("Enter the English mark :");
  english = int.parse(stdin.readLineSync()!);

  print("Enter the Maths mark :");
  maths = int.parse(stdin.readLineSync()!);

  print("Enter the Hindi mark :");
  hindi = int.parse(stdin.readLineSync()!);

  print("Enter the Science mark :");
  science = int.parse(stdin.readLineSync()!);

  print("Enter the Computer mark :");
  computer = int.parse(stdin.readLineSync()!);

  var total = english + maths + hindi + science + computer;

  var max = total / 500;

  var percentage = max * 100;

  print("Percentage : $percentage");

  if(percentage > 75)
  {
    print("Distinction");
  }
  else if(percentage > 60 && percentage <= 75)
  {
    print("First class");
  }
  else if(percentage > 50 && percentage <= 60)
  {
    print("Second class");
  }
  else if(percentage > 35 && percentage <= 50)
  {
    print("Pass class");
  }
  else
  {
    print("Fail");
  }

}