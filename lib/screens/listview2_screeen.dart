import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['One', 'Two', 'Three', 'Four', 'Five'];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lista de componetes'),
          elevation: 0,
          backgroundColor: Colors.deepPurple,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(options[index]),
                trailing:
                    const Icon(Icons.arrow_forward_ios, color: Colors.indigo),
                onTap: () {},
              );
            },
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
