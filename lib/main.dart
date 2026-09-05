import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'osamaranai',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const DeviceSpecScreen(),
    );
  }
}

class DeviceSpecScreen extends StatelessWidget {
  const DeviceSpecScreen({super.key});

  static const _textScaleEntries = [
    _TextScaleEntry(label: 'Body S', styleKey: _TextStyleKey.bodySmall),
    _TextScaleEntry(label: 'Body M', styleKey: _TextStyleKey.bodyMedium),
    _TextScaleEntry(
      label: 'Headline M',
      styleKey: _TextStyleKey.headlineMedium,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(title: const Text('端末スペック')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ListTile(title: Text('論理ピクセル')),
                ListTile(
                  title: const Text('幅'),
                  trailing: Text('${size.width.toStringAsFixed(1)} px'),
                ),
                ListTile(
                  title: const Text('高さ'),
                  trailing: Text('${size.height.toStringAsFixed(1)} px'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const ListTile(
            title: Text('文字サイズの拡大倍率'),
            subtitle: Text('左: スケーリングなし / 右: 本体設定を反映'),
          ),
          ..._textScaleEntries.map(
            (entry) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: _TextScaleComparison(
                label: entry.label,
                style: _textStyleFor(context, entry.styleKey),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static TextStyle _textStyleFor(BuildContext context, _TextStyleKey key) {
    final textTheme = Theme.of(context).textTheme;
    return switch (key) {
      _TextStyleKey.bodySmall => textTheme.bodySmall!,
      _TextStyleKey.bodyMedium => textTheme.bodyMedium!,
      _TextStyleKey.headlineMedium => textTheme.headlineMedium!,
    };
  }
}

enum _TextStyleKey { bodySmall, bodyMedium, headlineMedium }

class _TextScaleEntry {
  const _TextScaleEntry({required this.label, required this.styleKey});

  final String label;
  final _TextStyleKey styleKey;
}

class _TextScaleComparison extends StatelessWidget {
  const _TextScaleComparison({required this.label, required this.style});

  final String label;
  final TextStyle style;

  static const _sampleText = '収まらない';

  @override
  Widget build(BuildContext context) {
    final fontSize = style.fontSize!;
    final textScaler = MediaQuery.textScalerOf(context);
    final scaleRatio = textScaler.scale(fontSize) / fontSize;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(label),
              subtitle: Text('${scaleRatio.toStringAsFixed(2)}倍'),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: MediaQuery.withNoTextScaling(
                    child: Text(
                      _sampleText,
                      style: style,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    _sampleText,
                    style: style,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
