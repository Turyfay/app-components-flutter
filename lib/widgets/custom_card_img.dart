import 'package:flutter/material.dart';

class CustomCardImgScreen extends StatelessWidget {
  const CustomCardImgScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: const [
          FadeInImage(
            image: NetworkImage(
                'https://www.online-image-editor.com/styles/2019/images/power_girl.png'),
            placeholder: AssetImage('assets/loading/jar-loading.gif'),
          )
        ],
      ),
    );
  }
}
