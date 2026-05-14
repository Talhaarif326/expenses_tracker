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
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'Expense Tracker',
          style: TextStyle(color: Colors.white, fontSize: 26),
        ),
        centerTitle: true,
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
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
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
                    'data',
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
          ],
        ),
      ),
    );
  }
}
