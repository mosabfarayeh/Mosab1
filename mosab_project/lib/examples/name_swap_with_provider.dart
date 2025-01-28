//import 'package:example_project/controllers/login_controller.dart';
import 'package:example_project/controllers/swap_name_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// GUI class
class NameSwapWithProvider extends StatelessWidget {
  const NameSwapWithProvider({super.key});

  @override
  Widget build(BuildContext context) {
    // LISTEN
    // We use Consumer (or context.watch) to listen to changes in the Counter
    final name = context.watch<NameSwapController>().name;
    //************************************************************

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Auth Example'),
      ),
      body: Center(
        child: Text(
          'Name value: $name ',
          style: const TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // CALL
          // Access the provider and call increment
          context.read<NameSwapController>().swapName();
          //******************************************************
        },
        child: const Icon(Icons.person),
      ),
    );
  }
}
