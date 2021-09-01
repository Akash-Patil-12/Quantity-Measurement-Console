import 'dart:io';
import 'Length.dart';
import 'Temperature.dart';
import 'Volume.dart';

void main() {
  int choice = 1;
  while (choice != 0) {
    print('...........Quantity Measurment...........');
    print('Press 1 : Length');
    print('Press 2 : Tempreture');
    print('Press 3 : Volume');
    print('Press 0 : To Exit');
    print('.........................................');
    print('Enter your choice');
    choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        Length().lengthSelected();
        break;
      case 2:
        Temperature().temperatureConvertion();
        break;
      case 3:
        Volume().volumeSelected();
        break;
    }
  }
}
