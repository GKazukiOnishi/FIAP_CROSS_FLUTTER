import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  final int counter;
  //final void Function() onIncrementPressed;
  final VoidCallback onIncrementPressed;
  final VoidCallback onDecrementPressed;

  const MyHomePage({
    super.key,
    required this.title,
    required this.counter,
    required this.onIncrementPressed,
    required this.onDecrementPressed,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${widget.counter}', //widget -> forma de acessar atritutos do widget stateful
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextButton(
              onPressed: widget.onDecrementPressed,
              child: const Text("Decrement"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: widget.onIncrementPressed,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
