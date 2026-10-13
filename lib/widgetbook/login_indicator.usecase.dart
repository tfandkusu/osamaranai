import 'package:flutter/material.dart';
import 'package:osamaranai/component/login_indicator.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: LoginIndicator)
Widget loginIndicatorUseCase(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text('LoginIndicator')),
    body: const Center(child: LoginIndicator()),
  );
}
