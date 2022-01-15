import 'package:flutter/material.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonstyle =
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return MaterialApp(
      home: Scaffold (
        appBar: AppBar (
          title: const Text("Демо AppBar"),
            actions: <Widget> [
            IconButton(
                tooltip: "Балланс",
                onPressed: () {}, icon: const Icon(Icons.account_balance)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
              TextButton(
                  onPressed: () {},
                  child: const Text("Профиль"),
              style: buttonstyle,
            ),
           ],
          ),
        body: const Center(child: Text ("Тестовая страница AppBar")),
        ),
      );
      }
}
