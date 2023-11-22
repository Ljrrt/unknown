import 'package:flutter/material.dart';

class HexColor extends Color {
  HexColor(final String hex) : super(_getColor(hex));

  static int _getColor(String hex) {
    final String formattedHex = "FF" + hex.toUpperCase().replaceAll("#", "");
    return int.parse(formattedHex, radix: 16);
  }
}
