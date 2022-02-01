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
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre de la persona',
                    hintText: 'ingrese su nombre',
                    counterText: '3 caracteres',
                    suffixIcon: const Icon(Icons.group_add_outlined),
                    //prefixIcon: Icon(Icons.account_circle_outlined),
                    icon: const Icon(Icons.account_circle_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  textCapitalization: TextCapitalization.words,
                  autocorrect: true,
                  autofocus: true,
                  initialValue: 'Juan',
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null) {
                      return 'El nombre es requerido';
                    }
                    return value.length < 3 ? 'El nombre es muy corto' : null;
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
