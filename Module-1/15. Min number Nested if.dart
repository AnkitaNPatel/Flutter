import 'dart:io';

void main() 
{
  var num1, num2, num3, Min;

  print("Enter your First Number :");
  num1 = int.parse(stdin.readLineSync()!);

  print("Enter your Second Number :");
  num2 = int.parse(stdin.readLineSync()!);

  print("Enter your Third Number :");
  num3 = int.parse(stdin.readLineSync()!);

  if(num1 < num2)
  {
    if(num1 < num3)
    {
      Min = num1;
    }
    else
    {
      Min = num3;
    }
  }
  else
  {
    if(num2 < num3)
    {
      Min = num2;
    }
    else
    {
      Min = num3;
    }
  }

  print("$Min Number is Lowest");

}