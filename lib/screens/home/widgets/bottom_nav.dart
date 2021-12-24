import 'package:flutter/material.dart';

class MoneyManagementBottomNavigation extends StatelessWidget {
  const MoneyManagementBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Transactions"),
      BottomNavigationBarItem(icon: Icon(Icons.category), label: "Category")
    ]);
  }
}
