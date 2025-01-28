import 'package:flutter/material.dart';

class BottonInFormExample extends StatefulWidget {
  const BottonInFormExample({super.key});

  @override
  State<BottonInFormExample> createState() => _BottonInFormExampleState();
}

class _BottonInFormExampleState extends State<BottonInFormExample> {
  final _formKey = GlobalKey<FormState>();
  String _userName = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('Form is valid. Username: $_userName');
    } else {
      print('Form is invalid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botton in Form Example'),
      ),
      // ================================= > Form widget
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16),
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a username';
                }
                return null;
              },
              onSaved: (value) {
                _userName = value!;
              },
            ),
            SizedBox(height: 16),
            //elevated button
            ElevatedButton(
              onPressed: _submitForm,
              child: Text('Submit(elevated)'),
            ),
            SizedBox(height: 16),
            // outline button
            OutlinedButton(
              onPressed: _submitForm,
              child: Text('Submit(outlined)'),
            ),
            SizedBox(height: 16),
            // text button
            TextButton(
              onPressed: _submitForm,
              child: Text('Submit(text)'),
            ),
            SizedBox(height: 16),
            // icon button
            IconButton(
              onPressed: _submitForm,
              icon: Icon(Icons.info),
              tooltip: 'Submit(icon)',
            ),
            SizedBox(height: 16),
            // floating action button
            FloatingActionButton.extended(
              label: Text('Submit(floating)'),
              onPressed: _submitForm,
              icon: Icon(Icons.add),
              //tooltip: 'Submit(floating)',
            ),
            SizedBox(height: 16),
            // floating action button
            FloatingActionButton.small(
              onPressed: _submitForm,
              child: Icon(Icons.add),
              //tooltip: 'Submit(floating)',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: _submitForm,
        tooltip: 'Submit(floating)',
        child: Icon(Icons.add),
      ),
    );
  }
}
