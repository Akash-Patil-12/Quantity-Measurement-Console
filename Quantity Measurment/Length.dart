import 'dart:io';

class Length {
  dynamic measureMap = {
    1: [1.0, 1000.0, 100000.0, 1000000.0],
    2: [0.001, 1.0, 100.0, 1000.0],
    3: [0.00001, 0.01, 1.0, 10],
    4: [0.000001, 0.001, 0.1, 1.0]
  };
  void lengthSelected() {
    int choice;
    print('Enter the value');
    double number = double.parse(stdin.readLineSync()!);
    print('...........Select Option...........');
    print('Press 1 : Kilometer');
    print('Press 2 : Meter');
    print('Press 3 : Centimeter');
    print('Press 4 : Milimeter');
    print('...................................');
    print('Enter your choice');
    choice = int.parse(stdin.readLineSync()!);
    if (choice > 4) {
      print('Enter right choice');
    } else {
      int choiceConvert;
      print('...........Select Convert Option...........');
      print('Press 1 : Kilometer');
      print('Press 2 : Meter');
      print('Press 3 : Centimeter');
      print('Press 4 : Milimeter');
      print('...................................');
      print('Enter your choice');
      choiceConvert = int.parse(stdin.readLineSync()!);
      if (choiceConvert > 4) {
        print('Enter right choice');
      } else {
        double result = number * measureMap[choice][choiceConvert - 1];
        print('Result is : $result');
      }
    }
  }
}
