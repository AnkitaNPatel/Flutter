import 'dart:io';

void main()
{
  var i, f = 1, n1=0, n2 = 1, nextDigit = 0;
  print("Enter the Fibonacci Number :");
  var n = int.parse(stdin.readLineSync()!);
  
  for(i=1; i<=n; i++)
  {
    if (i == 1)
    {
      nextDigit = 0;
      stdout.write("Fibonacci Series: $nextDigit");
      continue;
    }
    if (i == 2)
    {
      nextDigit = 1;
      stdout.write(", $nextDigit");
      continue;
    }
    nextDigit = n1 + n2;
    n1 = n2;
    n2 = nextDigit;
    
    stdout.write(", $nextDigit");
    
  }
  print("\n");
}