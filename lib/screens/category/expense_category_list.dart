import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return Card(
              elevation: 0,
              child: ListTile(
                title: Text('Expense category $index'),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
              ));
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: 10);
  }
}
