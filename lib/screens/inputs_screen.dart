import 'package:app_components/widgets/widgets.dart';
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
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Column(
              children: const [
                CustomInputField(
                  labelText: 'Nombres',
                  hintText: 'Ingrese sus nombres',
                  inputType: TextInputType.text,
                ),
                SizedBox(height: 25),
                CustomInputField(
                  labelText: 'Apellidos',
                  hintText: 'Ingrese sus apellidos',
                  inputType: TextInputType.text,
                ),
                SizedBox(height: 25),
                CustomInputField(
                  labelText: 'Email',
                  hintText: 'Ingrese su email',
                  inputType: TextInputType.emailAddress,
                ),
                SizedBox(height: 25),
                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Ingrese su contraseña',
                  inputType: TextInputType.text,
                  obscureText: true,
                ),
              ],
            ),
          ),
        ));
  }
}
