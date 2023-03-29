import 'dart:io';

void main()
{
  var i,j,k,sp=10;
  for(i = 0; i <= 5; i++)
  {
    for(j = 1; j <= sp; j++)
    {
      stdout.write(" ");
    } 
    for (k = i; k >= 1; k--)  
    {
      stdout.write(" $i");
    }
    stdout.write("\n");
    sp = sp - 2;
  }
  stdout.write("\n");
}