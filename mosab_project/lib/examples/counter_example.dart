import 'package:flutter/material.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  // isAuth ? HomeApplication() : AuthScreen()
  var isAuth = false;
  // counter variable
  var _counter = 0;

  // login function to set isAuth to true
  // EXPECTED : await for x secounds and then set isAuth to true

  void _login() {
    setState(() {
      isAuth = true;
    });
  }

  // increment counter
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // logout function to set isAuth to false
  // EXPECTED : await for x secounds and then set isAuth to false
  void _logout() {
    setState(() {
      isAuth = false;
    });
  }

  // decrement counter
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Example(setState)'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter value $_counter",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
                (isAuth)
                    ? "User is Authenticated"
                    : "User is not Authenticated",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            isAuth
                ? SizedBox(
                    height: 1,
                  )
                : CircularProgressIndicator(),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: () {
                _incrementCounter();
                // _login();
              },
              child: const Icon(Icons.add)),
          SizedBox(height: 10),
          FloatingActionButton(
              onPressed: () {
                _decrementCounter();
                //_logout();
              },
              child: const Icon(Icons.remove)),
          SizedBox(height: 10),
          FloatingActionButton(
              onPressed: () {
                _login();
              },
              child: const Icon(Icons.login)),
          SizedBox(height: 10),
          FloatingActionButton(
              onPressed: () {
                _logout();
              },
              child: const Icon(Icons.logout)),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
