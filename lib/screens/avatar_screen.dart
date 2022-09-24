/// para mas detalles y ver el repositorio dirigirse a:
///
/// https://github.com/RazielCervantes/example-some-flutter-widgets

import 'package:fl_componentes/Widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
// import 'package:fl_componentes/themes/app_theme.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 5),
              child: CircleAvatar(
                child: const Text('EW'),
                backgroundColor: Colors.indigo[800],
              ))
        ],
      ),
      body: const SafeArea(
          child: WidgetWithCodeView(
        sourceFilePath: 'lib/screens/avatar_screen.dart',
        child: Center(
          child: CircleAvatar(
            maxRadius: 100,
            backgroundImage: NetworkImage(
                'https://media.vogue.mx/photos/5ea380c6a9c5e800087bd464/master/pass/Libros-que-recomienda-Emma-Watson.jpg'),
          ),
        ),
      )),
    );
  }
}
