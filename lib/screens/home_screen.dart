import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text("Clicks counter", style: style),
            Text("10", style: style),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print('Add to counter');
        },
      ),
    );
  }
}
