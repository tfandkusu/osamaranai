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
    return SizedBox(
      height: 20,
      width: double.infinity,
      child: Center(
        child: Text(
          '$age歳 $address',
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
