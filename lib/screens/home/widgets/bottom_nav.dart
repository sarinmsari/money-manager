import 'package:flutter/material.dart';
import 'package:order_taking_app/screens/home/screen_home.dart';

class MoneyManagementBottomNavigation extends StatelessWidget {
  const MoneyManagementBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ScreenHome.selectedIndexNotifier,
      builder: (context, int updatedIndex, _) {
        return BottomNavigationBar(
          currentIndex: updatedIndex,
          selectedItemColor: Colors.purple,
          onTap: (newIndex) {
            ScreenHome.selectedIndexNotifier.value = newIndex;
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Transactions"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: "Category")
          ],
        );
      },
    );
  }
}
