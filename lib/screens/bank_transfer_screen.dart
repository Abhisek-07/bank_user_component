import 'package:bank_user_component/models/bank_account.dart';
import 'package:bank_user_component/models/user.dart';
import 'package:bank_user_component/widgets/bank_transfer_component.dart';
import 'package:flutter/material.dart';

class BankTransferScreen extends StatelessWidget {
  BankTransferScreen({super.key, required this.user, required this.banks});

  final User user;
  final List<BankAccount> banks;

  BankAccount getDefaultBankAccount() {
    BankAccount defaultAccount =
        banks.firstWhere((account) => account.isDefault);
    return defaultAccount;
  }

  late BankAccount defaultAccount = getDefaultBankAccount();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bank Transfer'),
      ),
      body: BankTransferComponent(
        user: user,
        banks: banks,
        defaultBankAccount: defaultAccount,
      ),
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     Container(
      //       width: 150,
      //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      //     ),
      //     Container(
      //       width: 150,
      //       child: Text(user.accountNumber),
      //     ),
      //   ],
    );
  }
}
