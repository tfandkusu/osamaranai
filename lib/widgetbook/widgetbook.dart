import 'package:flutter/material.dart';
import 'package:osamaranai/widgetbook/custom_ios_viewports.dart';
import 'package:osamaranai/widgetbook/widgetbook.directories.g.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: directories,
      addons: [
        ViewportAddon([
          CustomIosViewports.iphoneSE1stGen,
          AndroidViewports.samsungGalaxyS20,
          CustomIosViewports.iphoneSE3rd,
          IosViewports.iPhone13,
          IosViewports.iPhone13ProMax,
        ]),
      ],
      appBuilder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          home: child,
        );
      },
    );
  }
}
