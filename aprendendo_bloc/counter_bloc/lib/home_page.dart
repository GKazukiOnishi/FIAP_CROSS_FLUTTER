import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  final int counter;
  //final void Function() onIncrementPressed;
  final VoidCallback onIncrementPressed;
  final VoidCallback onDecrementPressed;
  final VoidCallback onRandomPressed;
  final VoidCallback onClearPressed;

  const MyHomePage({
    super.key,
    required this.title,
    required this.counter,
    required this.onIncrementPressed,
    required this.onDecrementPressed,
    required this.onRandomPressed,
    required this.onClearPressed,
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: widget.onIncrementPressed,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: widget.onDecrementPressed,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: widget.onRandomPressed,
            tooltip: 'Random',
            child: const Icon(Icons.ads_click),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: widget.onClearPressed,
            tooltip: 'Clear',
            child: const Icon(Icons.clear),
          ),
        ],
      ),
    );
  }
}
