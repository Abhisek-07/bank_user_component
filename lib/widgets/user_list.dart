import 'package:bank_user_component/models/user.dart';
// import 'package:bank_user_component/widgets/circular_name_icon.dart';
// import 'package:bank_user_component/widgets/circular_select_button.dart';
import 'package:bank_user_component/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class UserList extends StatefulWidget {
  const UserList({
    super.key,
    required this.userList,
    // required this.selectOption,
    // required this.selectedIndex
  });

  final List<User> userList;
  // final void Function(int) selectOption;
  // final int selectedIndex;

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  int selectedIndex = -1;

  @override
  void initState() {
    // selectedIndex = widget.selectedIndex;
    super.initState();
  }

  void selectedOption(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(
                  height: 1,
                  color: Colors.black,
                ),
              );
            },
            itemCount: widget.userList.length,
            itemBuilder: (context, index) {
              User user = widget.userList[index];
              bool isSelected = selectedIndex == index;

              return CustomListTile(
                isSelected: isSelected,
                user: user,
                index: index,
                selectedOption: selectedOption,
              );
            },
          ),
        ),
        ElevatedButton(
            onPressed: () {
              ///
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                backgroundColor: const Color.fromARGB(255, 122, 44, 195),
                foregroundColor: Colors.white),
            child: const Text('Select User')),
      ],
    );
  }
}
