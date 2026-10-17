import 'package:flutter/material.dart';
import 'package:osamaranai/component/member_grid_profile_summary_part.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: MemberGridProfileSummaryPart)
Widget memberGridProfileSummaryPartUseCase(BuildContext context) {
  final age = context.knobs.int.input(label: 'age', initialValue: 24);
  final address = context.knobs.string(
    label: 'address',
    initialValue: '神奈川',
  );
  final parentWidth = context.knobs.int.slider(
    label: 'parentWidth',
    initialValue: 180,
    min: 180,
    max: 360,
    divisions: 180,
  );

  return Scaffold(
    appBar: AppBar(title: const Text('MemberGridProfileSummaryPart')),
    body: Center(
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.outline),
        ),
        child: SizedBox(
          width: parentWidth.toDouble(),
          child: MemberGridProfileSummaryPart(age: age, address: address),
        ),
      ),
    ),
  );
}
