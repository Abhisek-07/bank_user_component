import 'package:bank_user_component/models/bank_account.dart';
import 'package:bank_user_component/models/user.dart';
import 'package:bank_user_component/widgets/bank_transfer_container_component.dart';
import 'package:bank_user_component/widgets/circular_bank_icon.dart';
import 'package:bank_user_component/widgets/circular_name_icon.dart';
import 'package:flutter/material.dart';

class BankTransferComponent extends StatelessWidget {
  BankTransferComponent(
      {super.key,
      required this.user,
      required this.banks,
      required this.defaultBankAccount});

  final User user;
  final List<BankAccount> banks;
  BankAccount defaultBankAccount;
  late String displayAccountNumber =
      '*${defaultBankAccount.accountNumber.substring(defaultBankAccount.accountNumber.length - 4)}';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          BankTransferContainerComponent(
            title: defaultBankAccount.name,
            subtitle: displayAccountNumber,
            icon: CircularBankIcon(
              bank: defaultBankAccount,
              size: 'low',
            ),
          ),
          const SizedBox(width: 8),
          Container(
            width: 12,
            color: const Color.fromARGB(112, 158, 158, 158),
            height: 1,
          ),
          const SizedBox(width: 8),
          BankTransferContainerComponent(
            title: user.name,
            subtitle: user.accountNumber,
            icon: CircularNameIcon(
              name: user.name,
              backgroundColor: Colors.red,
              size: 'low',
            ),
          ),
        ],
      ),
    );
  }
}
