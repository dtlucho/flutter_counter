import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle textStyle = const TextStyle(fontSize: 25.0);

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
    );
  }
}
