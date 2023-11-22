import 'package:flutter/material.dart';

extension WidgetExtensions on Widget {
  Widget backgroundColor(Color color) {
    return Container(
      color: color,
      child: this,
    );
  }
}
