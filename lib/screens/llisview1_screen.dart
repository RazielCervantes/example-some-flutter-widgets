/// para mas detalles y ver el repositorio dirigirse a:
///
/// https://github.com/RazielCervantes/example-some-flutter-widgets

import 'package:flutter/material.dart';
import 'package:fl_componentes/Widgets/custom_widgets.dart';

class ListView1Screen extends StatelessWidget {
  ListView1Screen({Key? key}) : super(key: key);

  final List<String> options = [
    'Megaman',
    'Metal Gear',
    'Final Fantasy',
    'Super Smash'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview tipo 1'),
      ),
      body: WidgetWithCodeView(
        sourceFilePath: 'lib/screens/llisview1_screen.dart',
        child: SafeArea(
            child: ListView(
          children: [
            ...options
                .map((game) => ListTile(
                      title: Text(game),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList()
          ],
        )),
      ),
    );
  }
}
