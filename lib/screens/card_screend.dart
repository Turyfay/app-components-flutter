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
        CustomCardImgScreen(
          title: 'Super Girl',
          imgURL:
              'https://www.online-image-editor.com/styles/2019/images/power_girl.png',
        ),
        CustomCardImgScreen(
            title: 'Colors',
            imgURL:
                'https://www.nawpic.com/media/2020/minimalist-nawpic-4.jpg'),
        CustomCardImgScreen(
            title: 'Music',
            imgURL: 'https://wallpaperaccess.com/full/798903.png'),
        CustomCardImgScreen(
            title: 'Nirvana', imgURL: 'https://i.redd.it/py1i0j309go61.png')
      ]),
    );
  }
}
