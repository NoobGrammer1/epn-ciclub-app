import 'package:flutter/material.dart';
import 'package:renting_houses_app/theme/spaces.dart';

class GeneralProvider extends ChangeNotifier {
  LayoutSpaces? layoutSpaces;

  void setLayoutSpaces(double width, double height) {
    layoutSpaces = LayoutSpaces.fromWidthAndHeight(width, height);
    notifyListeners();
  }
}
