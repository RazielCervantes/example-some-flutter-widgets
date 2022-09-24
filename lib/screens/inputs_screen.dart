/// para mas detalles y ver el repositorio dirigirse a:
///
/// https://github.com/RazielCervantes/example-some-flutter-widgets

import 'package:fl_componentes/Widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValue = {
      'first_name': 'Felipe',
      'last_name': 'Cervantes',
      'email': 'Felipe.Cervantes@gmail.com',
      'password': '1234567',
      'role': 'admin',
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Inputs y forms')),
      body: SafeArea(
        child: WidgetWithCodeView(
          sourceFilePath: 'lib/screens/inputs_screen.dart',
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                key: myFormKey,
                child: Column(
                  children: [
                    CustomInputFieldWidget(
                      labelText: 'Nombre',
                      hintText: 'Nombre del usuario',
                      keywordType: TextInputType.name,
                      formProperty: 'first_name',
                      formValues: formValue,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomInputFieldWidget(
                      labelText: 'Apellido',
                      hintText: 'Apellido del usuario',
                      keywordType: TextInputType.name,
                      formProperty: 'last_name',
                      formValues: formValue,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomInputFieldWidget(
                      labelText: 'Correo electronico',
                      hintText: 'Correo electronico del usuario',
                      keywordType: TextInputType.emailAddress,
                      formProperty: 'email',
                      formValues: formValue,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomInputFieldWidget(
                      labelText: 'Contraseña',
                      hintText: 'Contraseña del usuario',
                      keywordType: TextInputType.emailAddress,
                      isPassword: true,
                      formProperty: 'password',
                      formValues: formValue,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    DropdownButtonFormField<String>(
                      value: 'Admin',
                      items: const [
                        DropdownMenuItem(
                          value: 'Admin',
                          child: Text('Admin'),
                        ),
                        DropdownMenuItem(
                          value: 'Superuser',
                          child: Text('Superuser'),
                        ),
                        DropdownMenuItem(
                          value: 'Developer',
                          child: Text('Developer'),
                        ),
                        DropdownMenuItem(
                          value: 'Jr Developer',
                          child: Text('Jr Developer'),
                        ),
                      ],
                      onChanged: (value) {
                        // print(value);
                        formValue['role'] = value ?? 'Admin';
                      },
                    ),
                    ElevatedButton(
                        onPressed: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          if (!myFormKey.currentState!.validate()) {
                            // print('formulario no valido');
                            return;
                          }
                          // print(formValue);
                        },
                        child: const SizedBox(
                            width: double.infinity,
                            child: Center(child: Text('Guardar'))))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// creacion de un widget custumizado para la creacion de los inputs
// import 'package:flutter/material.dart';

// class CustomInputFieldWidget extends StatelessWidget {
//   final String? hintText;
//   final String? helperText;
//   final String? labelText;
//   final IconData? icon;
//   final IconData? suffixxIcon;
//   final TextInputType? keywordType;
//   final bool isPassword;

//   final String formProperty;
//   final Map<String, String> formValues;

//   const CustomInputFieldWidget({
//     Key? key,
//     this.hintText,
//     this.helperText,
//     this.labelText,
//     this.icon,
//     this.suffixxIcon,
//     this.keywordType,
//     this.isPassword = false,
//     required this.formProperty,
//     required this.formValues,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       autofocus: false,
//       initialValue: '',
//       textCapitalization: TextCapitalization.words,
//       keyboardType: keywordType,
//       obscureText: isPassword,
//       onChanged: (value) {
//         formValues[formProperty] = value;
//       },
//       validator: (value) {
//         if (value == null) return 'este campo es requerido';
//         return value.length < 3 ? 'minimo de 3 letras' : null;
//       },
//       autovalidateMode: AutovalidateMode.onUserInteraction,
//       decoration: InputDecoration(
//         hintText: hintText,
//         labelText: labelText,
//         helperText: helperText,
//         suffixIcon: suffixxIcon == null ? null : Icon(suffixxIcon),
//         icon: icon == null ? null : Icon(icon),
//       ),
//     );
//   }
// }
