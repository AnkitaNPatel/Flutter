import 'dart:io';

void main()
{
  var num,max = 0;

  for(int i=1; i<=5; i++)
  {
    print("Enter the Number :");
    num = int.parse(stdin.readLineSync()!);
    if(max < num)
    {
      max = num;
    }  
  }

  print("Maximum Number is : $max");

}