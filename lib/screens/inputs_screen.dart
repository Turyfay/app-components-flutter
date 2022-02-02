import 'package:app_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    final Map<String, String> formData = {
      'name': '',
      'last': '',
      'email': '',
      'password': '',
      'role': '',
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Input y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomInputField(
                    formProperty: 'name',
                    formPropertyMap: formData,
                    labelText: 'Nombres',
                    hintText: 'Ingrese sus nombres',
                    inputType: TextInputType.text,
                  ),
                  const SizedBox(height: 25),
                  CustomInputField(
                    formProperty: 'last',
                    formPropertyMap: formData,
                    labelText: 'Apellidos',
                    hintText: 'Ingrese sus apellidos',
                    inputType: TextInputType.text,
                  ),
                  const SizedBox(height: 25),
                  CustomInputField(
                    formProperty: 'email',
                    formPropertyMap: formData,
                    labelText: 'Email',
                    hintText: 'Ingrese su email',
                    inputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 25),
                  CustomInputField(
                    formProperty: 'password',
                    formPropertyMap: formData,
                    labelText: 'Contraseña',
                    hintText: 'Ingrese su contraseña',
                    inputType: TextInputType.text,
                    obscureText: true,
                  ),
                  const SizedBox(height: 25),
                  DropdownButtonFormField<String>(
                      items: const [
                        DropdownMenuItem(
                          value: 'Admin',
                          child: Text('Admin'),
                        ),
                        DropdownMenuItem(
                          value: 'Supervisor',
                          child: Text('Supervisor'),
                        ),
                        DropdownMenuItem(
                          value: 'Vendedor',
                          child: Text('Vendedor'),
                        )
                      ].toList(),
                      onChanged: (value) {
                        formData['role'] = value ?? '';
                      }),
                  const SizedBox(height: 25),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () => {
                        if (_formKey.currentState!.validate())
                          {
                            _formKey.currentState!.save(),
                            print(formData),
                            FocusScope.of(context)..requestFocus(FocusNode()),
                          }
                      },
                      label: const Text('Guardar'),
                      icon: const Icon(Icons.save_outlined),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
