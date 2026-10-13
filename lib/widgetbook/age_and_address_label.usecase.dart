import 'package:flutter/material.dart';
import 'package:osamaranai/component/age_and_address_label.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: AgeAndAddressLabel)
Widget ageAndAddressLabelUseCase(BuildContext context) {
  final age = context.knobs.int.input(label: 'age', initialValue: 24);
  final address = context.knobs.string(label: 'address', initialValue: '神奈川');

  return Scaffold(
    appBar: AppBar(title: const Text('AgeAndAddressLabel')),
    body: Center(
      child: AgeAndAddressLabel(age: age, address: address),
    ),
  );
}
