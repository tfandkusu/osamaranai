import 'package:flutter/material.dart';

class LoginIndicator extends StatelessWidget {
  const LoginIndicator({super.key});

  static const _size = 11.0;

  /// Figma `Circle` fill (#AFDB2F). Material トークンに相当色がないため固定。
  static const _fillColor = Color(0xFFAFDB2F);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: _size,
      height: _size,
      child: DecoratedBox(
        decoration: BoxDecoration(color: _fillColor, shape: BoxShape.circle),
      ),
    );
  }
}
