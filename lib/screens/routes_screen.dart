/// para mas detalles y ver el repositorio dirigirse a:
///
/// https://github.com/RazielCervantes/example-some-flutter-widgets

import 'package:flutter/material.dart';
import 'package:fl_componentes/Widgets/custom_widgets.dart';

class RouteScreen extends StatelessWidget {
  const RouteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' how route were managed'),
      ),
      body: const SourceCodeView(
        filePath: 'lib/router/app_route.dart',
      ),
    );
  }
}
