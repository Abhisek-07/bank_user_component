import 'package:bank_user_component/models/bank_account.dart';
import 'package:bank_user_component/models/user.dart';
import 'package:flutter/material.dart';

class BankTransferScreen extends StatelessWidget {
  const BankTransferScreen(
      {super.key, required this.user, required this.banks});

  final User user;
  final List<BankAccount> banks;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bank Transfer'),
      ),
      body: Column(
        children: [
          Text(user.name),
          Center(
            child: Image.asset(banks[0].icon),
          ),
        ],
      ),
    );
  }
}
