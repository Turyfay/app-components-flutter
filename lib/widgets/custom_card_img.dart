import 'package:flutter/material.dart';

class CustomCardImgScreen extends StatelessWidget {
  const CustomCardImgScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage(
                'https://www.online-image-editor.com/styles/2019/images/power_girl.png'),
            placeholder: AssetImage('assets/loading/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 100),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Super Girl'),
          )
        ],
      ),
    );
  }
}
