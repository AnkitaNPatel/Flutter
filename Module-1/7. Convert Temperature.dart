import 'dart:io';

void main(){

  var celsius, fahrenheit;

  print("Enter temperature in Celsius :");
  celsius = int.parse(stdin.readLineSync()!);

  var c = celsius * 1.8;
  fahrenheit = c + 32;

  print("Temperature in Fahrenheit : $fahrenheit");

}