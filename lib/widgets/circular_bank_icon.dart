import 'package:bank_user_component/models/bank_account.dart';
import 'package:flutter/material.dart';

class CircularBankIcon extends StatelessWidget {
  const CircularBankIcon({super.key, required this.bank, this.size = 'medium'});

  final BankAccount bank;
  final String size;

  double _getSizeValue() {
    switch (size) {
      case 'low':
        return 32;
      case 'medium':
        return 48;
      case 'high':
        return 64;
      default:
        return 48;
    }
  }

  @override
  Widget build(BuildContext context) {
    final double radius = _getSizeValue() / 2;

    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage(bank.icon),
    );
  }
}
