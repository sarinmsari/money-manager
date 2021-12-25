import 'package:flutter/material.dart';
import 'package:order_taking_app/screens/category/screen_category.dart';
import 'package:order_taking_app/screens/home/widgets/bottom_nav.dart';
import 'package:order_taking_app/screens/transactions/screen_transaction.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);
  final _pages = const [
    ScreenTransaction(),
    ScreenCategory(),
  ];
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        title: Text("MONEY MANAGER"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectedIndexNotifier,
          builder: (context, int selectedIndex, _) {
            return _pages[selectedIndex];
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (selectedIndexNotifier.value == 0) {
            print("transaction add");
          } else {
            print("category add");
          }
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: MoneyManagementBottomNavigation(),
    );
  }
}
