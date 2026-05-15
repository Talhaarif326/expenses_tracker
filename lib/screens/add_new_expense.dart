import 'package:flutter/material.dart';

class AddNewExpense extends StatelessWidget {
  const AddNewExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(decoration: InputDecoration(  hintText: 'Enter the name of the expense')),
          ],
        ),
      ),
    );
  }
}
