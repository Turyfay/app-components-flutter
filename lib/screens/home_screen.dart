import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          elevation: 1,
          title: const Text('Menu Componenets Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text('Item $index'),
                  onTap: () {},
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 10));
  }
}
