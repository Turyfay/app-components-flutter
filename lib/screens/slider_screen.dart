import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _value = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Slider.adaptive(
                  min: 0.0,
                  max: 500.0,
                  divisions: 10,
                  value: _value,
                  onChanged: (double value) {
                    setState(() {
                      _value = value;
                    });
                  }),
              Image(
                image: const NetworkImage('https://picsum.photos/250?image=20'),
                fit: BoxFit.contain,
                width: _value,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
