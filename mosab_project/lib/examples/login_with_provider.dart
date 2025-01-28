import 'package:example_project/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// GUI class
class LoginWithProvider extends StatelessWidget {
  const LoginWithProvider({super.key});

  @override
  Widget build(BuildContext context) {
    // LISTEN
    // We use Consumer (or context.watch) to listen to changes in the Counter
    final isAuthValue = context.watch<LoginController>().isAuth;
    //************************************************************

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Auth Example'),
      ),
      body: Center(
        child: Text(
          'isAuth value: $isAuthValue',
          style: const TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // CALL
          // Access the provider and call increment
          context.read<LoginController>().login();
          //******************************************************
        },
        child: const Icon(Icons.login),
      ),
    );
  }
}
