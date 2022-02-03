import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _value = 100.0;
  bool _showValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
                min: 0.0,
                max: 700.0,
                divisions: 10,
                value: _value,
                onChanged: _showValue
                    ? (value) {
                        _value = value;
                        setState(() {});
                      }
                    : null),
            Checkbox(
                value: _showValue,
                onChanged: (value) {
                  setState(() {
                    _showValue = value ?? true;
                  });
                }),
            CheckboxListTile(
                activeColor: Colors.red,
                title: const Text('Habilitar'),
                value: _showValue,
                onChanged: (value) {
                  setState(() {
                    _showValue = value ?? true;
                  });
                }),
            Switch(
                value: _showValue,
                onChanged: (value) {
                  setState(() {
                    _showValue = value;
                  });
                }),
            SwitchListTile.adaptive(
                title: const Text('Habilitar'),
                activeColor: Colors.red,
                value: _showValue,
                onChanged: (value) {
                  setState(() {
                    _showValue = value;
                  });
                }),
            const AboutListTile(),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://c.wallhere.com/photos/23/52/Fate_Series_FGO_Fate_Stay_Night_anime_girls_long_hair_small_boobs_blond_hair_green_eyes-1739895.jpg!d'),
                  fit: BoxFit.contain,
                  width: _value,
                ),
              ),
            ),
          ],
        ));
  }
}
