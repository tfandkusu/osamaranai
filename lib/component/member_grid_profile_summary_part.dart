import 'package:flutter/material.dart';
import 'package:osamaranai/component/age_and_address_label.dart';
import 'package:osamaranai/component/login_indicator.dart';
import 'package:osamaranai/component/verified_badge.dart';

class MemberGridProfileSummaryPart extends StatelessWidget {
  const MemberGridProfileSummaryPart({
    super.key,
    required this.age,
    required this.address,
  });

  final int age;
  final String address;

  static const _horizontalPadding = 6.0;
  static const _gap = 6.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: _horizontalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const LoginIndicator(),
          const SizedBox(width: _gap),
          Expanded(
            child: Center(
              child: AgeAndAddressLabel(age: age, address: address),
            ),
          ),
          const SizedBox(width: _gap),
          const VerifiedBadge(),
        ],
      ),
    );
  }
}
