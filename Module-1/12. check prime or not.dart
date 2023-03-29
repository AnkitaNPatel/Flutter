import 'dart:io';

void main(){

  print("Enter the Number :");
  var num = int.parse(stdin.readLineSync()!);

  var i;
  for(i = 2; i <= num/2; i++)
  {
    if(num % i == 0)
    {
      print("$num number is not Prime");
      break;
    }
    else
    {
      print("$num number is Prime");
      break;
    }
  }

}