import 'dart:io';

void main()
{
  var i, f = 1;
  print("Enter the Factorial Number :");
  var n = int.parse(stdin.readLineSync()!);

  for(i=1; i<=n; i++)
  {
    f = i * f;
  }
  print("Factorial Number $n is : $f");
}