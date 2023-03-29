import 'dart:io';

void main()
{
  var a;
  print("Enter the Arithmetic icon: ");
  a = stdin.readLineSync()!;

  switch(a){
    case '+':
      print("Enter the value X :");
      var x = int.parse(stdin.readLineSync()!);
      print("Enter the value Y :");
      var y = int.parse(stdin.readLineSync()!);
      var add = x + y;
      print("Addition is: $add");
      break;
    case '-':
      print("Enter the value X :");
      var x = int.parse(stdin.readLineSync()!);
      print("Enter the value Y :");
      var y = int.parse(stdin.readLineSync()!);
      var sub = x - y;
      print("Subtraction is: $sub");
      break;
    case '*':
      print("Enter the value X :");
      var x = int.parse(stdin.readLineSync()!);
      print("Enter the value Y :");
      var y = int.parse(stdin.readLineSync()!);
      var mul = x * y;
      print("Multiplication is: $mul");
      break;
    case '/':
      print("Enter the value X :");
      var x = int.parse(stdin.readLineSync()!);
      print("Enter the value Y :");
      var y = int.parse(stdin.readLineSync()!);
      var div = x / y;
      print("Division is: $div");
      break;
    default:
      print("Invalid input");
      break;
    
  }
}