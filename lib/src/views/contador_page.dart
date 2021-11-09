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
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_zero),
          onPressed: _reset,
        ),
        const Expanded(child: SizedBox()),
        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: _substract,
        ),
        const SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: _add,
        ),
      ],
    );
  }

  void _add() {
    setState(() => _count++);
  }

  void _substract() {
    setState(() => _count--);
  }

  void _reset() {
    setState(() => _count = 0);
  }
}
