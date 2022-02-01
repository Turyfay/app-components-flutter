import 'package:flutter/material.dart';
import 'package:app_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Wiget')),
      body:
          ListView(padding: const EdgeInsets.all(10), children: const <Widget>[
        CustomCard(
          title: 'Hola',
          subtitle: 'Hola Mundo',
          icon: Icons.access_alarm,
        ),
        CustomCardImgScreen()
      ]),
    );
  }
}
