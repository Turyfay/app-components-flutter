import 'package:flutter/material.dart';

class CustomCardImgScreen extends StatelessWidget {
  const CustomCardImgScreen(
      {Key? key, required this.imgURL, required this.title})
      : super(key: key);

  final String imgURL;
  final String title;

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
          FadeInImage(
            image: NetworkImage(imgURL),
            placeholder: const AssetImage('assets/loading/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 100),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Text(title),
          )
        ],
      ),
    );
  }
}
