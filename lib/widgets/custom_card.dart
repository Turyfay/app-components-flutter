//TODO: Add a custom card widget that displays a title, subtitle, and an image.
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  //final String image = '';
  final IconData icon;

  const CustomCard({
    Key? key,
    required this.title,
    required this.subtitle,
    //required this.image,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(icon),
            title: Text(title),
            subtitle: Text(subtitle),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () => null, child: const Text('Cancel')),
                TextButton(onPressed: () => null, child: const Text('Ok')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
