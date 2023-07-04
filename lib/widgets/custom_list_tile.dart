import 'package:bank_user_component/models/user.dart';
import 'package:flutter/material.dart';
import 'package:bank_user_component/widgets/circular_name_icon.dart';
import 'package:bank_user_component/widgets/circular_select_button.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.isSelected,
    required this.user,
    required this.index,
    required this.selectedOption,
    this.showTrailing = false,
    this.showLeading = true,
  });

  final bool isSelected;
  final User user;
  final int index;
  final void Function(int) selectedOption;
  final bool showTrailing;
  final bool showLeading;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: isSelected ? Colors.yellow : null,
      onTap: () {
        // setState(() {
        //   selectedIndex = index;
        // });
        selectedOption(index);
        // widget.selectOption(index);
      },
      // Icon Component
      leading: showLeading
          ? CircularNameIcon(
              name: user.name,
              backgroundColor: index % 2 == 0 ? Colors.blue : Colors.green,
            )
          : null,
      // Text Component
      title: Text(user.name),
      // subtitle component
      subtitle: Text(user.accountNumber + '/' + user.ifsc),
      // Radio button component
      trailing:
          showTrailing ? CircularSelectButton(isSelected: isSelected) : null,
    );
  }
}
