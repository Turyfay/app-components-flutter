import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert')),
      body: Center(
        child: ElevatedButton(
            /* style: ElevatedButton.styleFrom(
              primary: Colors.indigo,
            ), */
            onPressed: () => null,
            child: const Text('Show Alert')),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => null,
      ),
    );
  }
}
