import 'package:example_project/controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// GUI class
class CounterWithProvider extends StatelessWidget {
  const CounterWithProvider({super.key});

  @override
  Widget build(BuildContext context) {
    // LISTEN
    // We use Consumer (or context.watch) to listen to changes in the Counter
    final counterValue = context.watch<CounterController>().count;
    //************************************************************

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Counter Example'),
      ),
      body: Center(
        child: Text(
          'Counter value: $counterValue',
          style: const TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // CALL
          // Access the provider and call increment
          context.read<CounterController>().increment();
          //******************************************************
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
