import 'dart:io';

void main(){

  print("Enter the Number :");
  var num = int.parse(stdin.readLineSync()!);

  if(num >= 0)
  {
    print("$num number is Positive");
  }
  else
  {
    print("$num number is Negative");
  }

}