import 'package:flutter/material.dart';

class ScreenTransaction extends StatelessWidget {
  const ScreenTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return const Card(
            elevation: 0,
            child: ListTile(
              leading: CircleAvatar(
                child: Text(
                  '25\nDec',
                  textAlign: TextAlign.center,
                ),
                radius: 35,
              ),
              title: Text('50,00,000'),
              subtitle: Text('salary'),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: 10);
  }
}
