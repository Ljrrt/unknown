import 'package:flutter/material.dart';

class ModularGap extends StatelessWidget {
  final double size;

  const ModularGap({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size, width: size);
  }
}
