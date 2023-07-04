import 'package:bank_user_component/data/users.dart';
import 'package:bank_user_component/models/user.dart';
import 'package:bank_user_component/widgets/user_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<User> userList = createUserList();
  int selectedIndex = -1;

  void selectOption(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New component')),
      body: UserList(
        // selectedIndex: selectedIndex,
        // selectOption: selectOption,
        userList: userList,
      ),
    );
  }
}
