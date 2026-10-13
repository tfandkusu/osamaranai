import 'package:flutter/material.dart';
import 'package:osamaranai/component/age_and_address_label.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: AgeAndAddressLabel)
Widget ageAndAddressLabelUseCase(BuildContext context) {
  return const Center(child: AgeAndAddressLabel(age: 24, address: '神奈川'));
}
