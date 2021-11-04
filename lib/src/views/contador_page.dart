import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final TextStyle _textStyle = const TextStyle(fontSize: 25.0);
  int _count = 0;

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
              style: _textStyle,
            ),
            Text(
              '$_count',
              style: _textStyle,
            ),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: null,
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: null,
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: null,
        ),
      ],
    );
  }
}
