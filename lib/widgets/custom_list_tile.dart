import 'package:bank_user_component/models/user.dart';
import 'package:flutter/material.dart';
import 'package:bank_user_component/widgets/circular_name_icon.dart';
import 'package:bank_user_component/widgets/circular_select_button.dart';

class CustomListTile extends StatefulWidget {
  const CustomListTile({
    super.key,
    required this.isSelected,
    required this.user,
    required this.index,
    required this.selectedOption,
  });

  final bool isSelected;
  final User user;
  final int index;
  final void Function(int) selectedOption;

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: widget.isSelected ? Colors.yellow : null,
      onTap: () {
        // setState(() {
        //   selectedIndex = index;
        // });
        widget.selectedOption(widget.index);
        // widget.selectOption(index);
      },
      // Icon Component
      leading: CircularNameIcon(
        name: widget.user.name,
        backgroundColor: widget.index % 2 == 0 ? Colors.blue : Colors.green,
      ),
      // Text Component
      title: Text(widget.user.name),
      // subtitle component
      subtitle: Text(widget.user.accountNumber + '/' + widget.user.ifsc),
      // Radio button component
      trailing: CircularSelectButton(isSelected: widget.isSelected),
    );
  }
}
