import 'dart:io';

void main()
{
  var i;
  print("Enter the Number :");
  var n = int.parse(stdin.readLineSync()!);
  for(i=n; i>=1; i--)
  {
    print(i);
  }
}