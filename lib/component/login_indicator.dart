import 'package:flutter/material.dart';
import 'package:osamaranai/gen/assets.gen.dart';

class LoginIndicator extends StatelessWidget {
  const LoginIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Assets.images.loginIndicator.svg(width: 11, height: 11);
  }
}
