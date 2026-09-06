import 'package:flutter/material.dart';

class LogicalPixelCard extends StatelessWidget {
  const LogicalPixelCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Card(
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
    );
  }
}
