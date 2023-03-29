import 'dart:io';

void main() 
{
  var num1, num2, num3, max;

  print("Enter your First Number :");
  num1 = int.parse(stdin.readLineSync()!);

  print("Enter your Second Number :");
  num2 = int.parse(stdin.readLineSync()!);

  print("Enter your Third Number :");
  num3 = int.parse(stdin.readLineSync()!);

  if(num1 > num2)
  {
    if(num1 > num3)
    {
      max = num1;
    }
    else
    {
      max = num3;
    }
  }
  else
  {
    if(num2 > num3)
    {
      max = num2;
    }
    else
    {
      max = num3;
    }
  }

  print("$max Number is Largest");

}