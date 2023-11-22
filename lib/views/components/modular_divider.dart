import 'package:flutter/material.dart';

class ModularDivider extends StatelessWidget {
  final double thickness;
  final double topMargin;
  final double bottomMargin;
  final Color color;

  const ModularDivider(
      {super.key,
      required this.topMargin,
      required this.bottomMargin,
      required this.color,
      required this.thickness});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: topMargin),
        Divider(
          color: color,
          thickness: thickness,
        ),
        SizedBox(height: bottomMargin),
      ],
    );
  }
}
