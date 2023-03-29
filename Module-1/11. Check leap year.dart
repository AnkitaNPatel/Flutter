import 'dart:io';

void main(){

  print("Enter the Year :");
  var year = int.parse(stdin.readLineSync()!);

  if(year %4 == 0)
  {
    print("$year is Leap Year");
  }
  else
  {
    print("$year is not Leap Year");
  }

}