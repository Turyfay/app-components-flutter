import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['One', 'Two', 'Three', 'Four', 'Five'];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Lista de componetes')),
        body: ListView(
          children: [
            ...options
                .map((e) => ListTile(
                      title: Text(e),
                      trailing: const Icon(Icons.arrow_right_rounded, size: 30),
                    ))
                .toList()
          ],
        ));
  }
}
