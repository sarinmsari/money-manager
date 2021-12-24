import 'package:flutter/material.dart';
import 'package:order_taking_app/screens/home/widgets/bottom_nav.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text("HomeScreen")),
      bottomNavigationBar: MoneyManagementBottomNavigation(),
    );
  }
}
