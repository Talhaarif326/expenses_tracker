import 'package:expenses_tracker/screens/add_new_expense.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Expense Tracker',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddNewExpense(),
                ),
              );
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Balanace : ',
                    style: TextStyle(
                      fontSize: 26,
                      color: Theme.of(
                        context,
                      ).colorScheme.onSecondary,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'to be filled',
                    style: TextStyle(
                      fontSize: 26,
                      color: Theme.of(
                        context,
                      ).colorScheme.onSecondary,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (contex, index) {
                  return ListTile(
                    leading: Icon(Icons.exposure_plus_1_outlined),
                    title: Text(
                      "Expanse",
                      style: TextStyle(
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface,
                      ),
                    ),
                    trailing: Text("$index"),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
