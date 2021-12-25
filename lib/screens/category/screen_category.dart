import 'package:flutter/material.dart';
import 'package:order_taking_app/screens/category/expense_category_list.dart';
import 'package:order_taking_app/screens/category/income_category_list.dart';

class ScreenCategory extends StatefulWidget {
  const ScreenCategory({Key? key}) : super(key: key);

  @override
  State<ScreenCategory> createState() => _ScreenCategoryState();
}

class _ScreenCategoryState extends State<ScreenCategory>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  void initState() {
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          labelColor: Colors.purple,
          unselectedLabelColor: Colors.purple[300],
          tabs: [
            Tab(
              text: 'INCOME',
            ),
            Tab(
              text: 'EXPENCE',
            )
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              IncomeList(),
              ExpenseList(),
            ],
          ),
        )
      ],
    );
  }
}
