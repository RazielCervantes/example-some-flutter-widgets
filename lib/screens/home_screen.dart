import 'package:flutter/material.dart';
import 'package:fl_componentes/themes/app_theme.dart';
import 'package:fl_componentes/router/app_route.dart';
// import 'package:fl_componentes/models/menu_options.dart';
// import 'package:fl_componentes/screens/screens.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (BuildContext context, index) => ListTile(
                    title: Text(AppRoute.menuOptions[index].name),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Apptheme.primary,
                    ),
                    leading: Icon(
                      AppRoute.menuOptions[index].icon,
                      color: Apptheme.primary,
                    ),
                    onTap: () {
                      //opcion 1 para navegar entre paginas

                      // final route = MaterialPageRoute(
                      //     builder: (context) => ListView2Screen());

                      // Navigator.push(context, route);

                      //opcion 2 para navegar entre paginas

                      Navigator.pushNamed(
                          context, AppRoute.menuOptions[index].route);
                    },
                  ),
              separatorBuilder: (BuildContext context, index) =>
                  const Divider(),
              itemCount: AppRoute.menuOptions.length)),
    );
  }
}
