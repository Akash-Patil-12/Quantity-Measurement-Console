import 'dart:io';

class Temperature {
  void temperatureConvertion() {
    int choice;
    double result;
    print('Enter the value');
    double number = double.parse(stdin.readLineSync()!);
    print('...........Select Option...........');
    print('Press 1 : Celsuis');
    print('Press 2 : Fahrenheit');
    print('Press 3 : Kelvin');
    print('...................................');
    print('Enter your choice');
    choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        int convertOption = temperatureConvertTo();
        if (convertOption == 1) {
          result = number * 1.0;
          print('Result : $result');
        }
        if (convertOption == 2) {
          result = number * (9 / 5) + 32;
          print('Result :$result');
        }
        if (convertOption == 3) {
          result = number + 273.15;
          print('Result :$result');
        }
        break;
      case 2:
        int convertOption = temperatureConvertTo();
        if (convertOption == 1) {
          result = (number - 32) * (5 / 9);
          print('Result :$result');
        }
        if (convertOption == 2) {
          result = number * 1.0;
          print('Result :$result');
        }
        if (convertOption == 3) {
          result = (number - 32) * (5 / 9) + 273.15;
          print('Result :$result');
        }
        break;
      case 3:
        int convertOption = temperatureConvertTo();
        if (convertOption == 1) {
          result = number - 273.15;
          print('Result :$result');
        }
        if (convertOption == 2) {
          result = (number - 273.15) * (9 / 5) + 32;
          print('Result :$result');
        }
        if (convertOption == 3) {
          result = number * 1.0;
          print('Result :$result');
        }
        break;
      default:
        print('Enter right choice');
        break;
    }
  }

  int temperatureConvertTo() {
    print('...........Select Convert Option...........');
    print('Press 1 : Celsuis');
    print('Press 2 : Fahrenheit');
    print('Press 3 : Kelvin');
    print('...................................');
    print('Enter your choice');
    int convertChoice = int.parse(stdin.readLineSync()!);
    return convertChoice;
  }
}
