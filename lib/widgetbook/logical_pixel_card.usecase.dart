import 'package:flutter/material.dart';
import 'package:osamaranai/logical_pixel_card.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: LogicalPixelCard)
Widget logicalPixelCardUseCase(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text('端末スペック')),
    body: Column(
      children: [
        Padding(padding: const EdgeInsets.all(16), child: LogicalPixelCard()),
      ],
    ),
  );
}
