import 'package:flutter/material.dart';
import 'package:osamaranai/gen/assets.gen.dart';

class VerifiedBadge extends StatelessWidget {
  const VerifiedBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 18,
      height: 18,
      child: Center(
        child: Assets.images.verifiedBadge.svg(width: 12.6316, height: 15),
      ),
    );
  }
}
