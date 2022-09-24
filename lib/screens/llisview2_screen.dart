/// para mas detalles y ver el repositorio dirigirse a:
///
/// https://github.com/RazielCervantes/example-some-flutter-widgets

import 'package:flutter/material.dart';
import 'package:fl_componentes/Widgets/custom_widgets.dart';

class ListView2Screen extends StatelessWidget {
  ListView2Screen({Key? key}) : super(key: key);

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
        title: const Text('Listview tipo 2'),
      ),
      body: WidgetWithCodeView(
        sourceFilePath: 'lib/screens/llisview2_screen.dart',
        child: SafeArea(
            child: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
              title: Text(options[index]),
              leading: const Icon(Icons.games_outlined),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.indigo,
              ),
              onTap: () {}),
          separatorBuilder: (_, __) => const Divider(),
        )),
      ),
    );
  }
}
