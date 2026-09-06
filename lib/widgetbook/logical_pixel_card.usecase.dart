import 'package:flutter/material.dart';
import 'package:osamaranai/logical_pixel_card.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: LogicalPixelCard)
Widget logicalPixelCardUseCase(BuildContext context) {
  return const LogicalPixelCard();
}
