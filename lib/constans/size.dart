// constans/size.dart
import 'package:flutter/widgets.dart';

class SizeJaja {
  static double screenWidth = 0;
  static double screenHeight = 0;

  static void init(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData.size.width;
    screenHeight = mediaQueryData.size.height;
  }

  static double get tinggi => screenHeight;
  static double get lebar => screenWidth;
}
