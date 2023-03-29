import 'dart:io';

void main()
{
  var a;
  print("Enter the Which area want to select:\n 1. Area of Triangle \n 2. Area of Rectangle \n 3. Area of Circle");
  a = int.parse(stdin.readLineSync()!);

  switch(a){
    case 1:
      print("Enter the Base :");
      var base = int.parse(stdin.readLineSync()!);

      print("Enter the Height :");
      var height = int.parse(stdin.readLineSync()!);

      var bh = base * height;
      var Area = bh / 2;

      print("Area of Triangle : $Area");
      
      break;
    case 2:
      print("Enter the Length :");
      var l = int.parse(stdin.readLineSync()!);

      print("Enter the Width :");
      var w = int.parse(stdin.readLineSync()!);

      var Area = l * w;

      print("Area of Rectangle : $Area");

      break;
    case 3:
      var pie = 3.14;

      print("Enter the Radius of Cicle :");
      var r = int.parse(stdin.readLineSync()!);

      var Area = pie * r * r;
      print("Area of Circle : $Area");

      break;
    default:
      print("Invalid input");
      break;
    
  }
}