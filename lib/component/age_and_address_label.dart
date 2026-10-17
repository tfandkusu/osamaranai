import 'package:flutter/material.dart';

class AgeAndAddressLabel extends StatelessWidget {
  const AgeAndAddressLabel({
    super.key,
    required this.age,
    required this.address,
  });

  final int age;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$age歳 $address',
      style: Theme.of(context).textTheme.bodyMedium,
      textAlign: TextAlign.center,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
