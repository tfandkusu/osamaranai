import 'package:flutter/material.dart';
import 'package:osamaranai/component/verified_badge.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: VerifiedBadge)
Widget verifiedBadgeUseCase(BuildContext context) {
  return const Center(child: VerifiedBadge());
}
