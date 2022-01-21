import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

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
          children: <Widget>[
            const Text("Clicks counter", style: style),
            Text("$counter", style: style),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions(
        increaseFunction: increase,
        decreaseFunction: decrease,
        resetFunction: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  const CustomFloatingActions({
    Key? key,
    required this.increaseFunction,
    required this.decreaseFunction,
    required this.resetFunction,
  }) : super(key: key);

  final Function increaseFunction;
  final Function decreaseFunction;
  final Function resetFunction;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => decreaseFunction(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_outlined),
          onPressed: () => resetFunction(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: () => increaseFunction(),
        ),
      ],
    );
  }
}

//() => setState(() => counter--)