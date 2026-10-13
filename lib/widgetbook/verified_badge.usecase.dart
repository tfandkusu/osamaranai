import 'package:flutter/material.dart';
import 'package:osamaranai/component/verified_badge.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: VerifiedBadge)
Widget verifiedBadgeUseCase(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text('VerifiedBadge')),
    body: const Center(child: VerifiedBadge()),
  );
}
