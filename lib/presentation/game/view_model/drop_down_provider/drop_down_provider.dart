import 'package:flutter/material.dart';

class DropDownProvider extends ChangeNotifier {
  IconData iconValue = Icons.work;

  List<IconData> iconList = [
    Icons.work,
    Icons.access_alarm_sharp,
    Icons.add_card,
    Icons.man,
    Icons.woman,
  ];

  void changeCurrentIcon(IconData? newIcon) {
    iconValue = newIcon ?? iconValue;
    notifyListeners();
  }
}
