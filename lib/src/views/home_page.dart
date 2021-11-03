import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle textStyle = const TextStyle(fontSize: 25.0);

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Number of clicks:',
              style: textStyle,
            ),
            Text(
              '0',
              style: textStyle,
            ),
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
