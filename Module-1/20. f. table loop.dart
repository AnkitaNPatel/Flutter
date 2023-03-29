import 'dart:io';

void main()
{
  var i, num;

  print("Enter the number:");
  num = int.parse(stdin.readLineSync()!);

  for(i=1; i<=10; i++)
  {

    var value = num * i;
    print("$num X $i = $value");
    
  }
}