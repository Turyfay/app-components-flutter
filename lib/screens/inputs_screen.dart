import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Input y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre de la persona',
                  ),
                  keyboardType: TextInputType.text,
                  textCapitalization: TextCapitalization.words,
                  autocorrect: true,
                  autofocus: true,
                  initialValue: 'Juan',
                  validator: (value) {
                    if (value == null) {
                      return 'El nombre es requerido';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
