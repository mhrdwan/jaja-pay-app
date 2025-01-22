// constans/color.dart
import 'package:flutter/material.dart';

abstract class JajaColors {
  static _JajaYellow get JajaYellow => _JajaYellow();
  static _JajaBlue get JajaBlue => _JajaBlue();
  static Color get background => const Color(0xFFE9F3FF);
  static Color get grey => const Color(0xFFA0A0A0);
}

class _JajaYellow {
  final Color Y50 = const Color(0xFFFEF7EB);
  final Color Y75 = const Color(0xFFFCDFAE);
  final Color Y100 = const Color(0xFFFAD28C);
  final Color Y200 = const Color(0xFFF8BF5B);
  final Color Y300 = const Color(0xFFF7B239);
  final Color Y400 = const Color(0xFFAD7D28);
  final Color Y500 = const Color(0xFF976D23);
}

class _JajaBlue {
  final Color B50 = const Color(0xFFEEF7FC);
  final Color B75 = const Color(0xFFB8DFF4);
  final Color B100 = const Color(0xFF9BD2F0);
  final Color B200 = const Color(0xFF6FBFE9);
  final Color B300 = const Color(0xFF52B2E5);
  final Color B400 = const Color(0xFF397DA0);
}
