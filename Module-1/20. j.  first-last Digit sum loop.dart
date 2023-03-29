import 'dart:io';

void main()
{
  var num, sum, firstDigit, lastDigit;

  for(int i=1; i<=5; i++)
  {
    print("Enter the Number :");
    num = int.parse(stdin.readLineSync()!);

    if(i == 1)
    {
      firstDigit = num;
    }

    lastDigit = num;

  }
  sum = firstDigit + lastDigit;
  print("First digit $firstDigit and Last digit $lastDigit Addition is: $sum");

}