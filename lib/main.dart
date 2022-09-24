import 'package:flutter/material.dart';
import 'package:fl_componentes/themes/app_theme.dart';
import 'package:fl_componentes/router/app_route.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material ',
        initialRoute: AppRoute.initialroute,
        routes: AppRoute.getAppRoutes(),
        onGenerateRoute: AppRoute.onGenerateRoute,
        theme: Apptheme.ligththeme);
  }
}
