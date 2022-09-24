import 'package:flutter/material.dart';
import 'package:fl_componentes/themes/app_theme.dart';

class CustomCardWidgetType1 extends StatelessWidget {
  const CustomCardWidgetType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Reprehenderit magna enim eiusmod do ex officia ex pariatur eu. Sunt ex laboris excepteur sint consequat et eu est sit aute adipisicing sunt. Ullamco ipsum culpa deserunt deserunt labore officia cillum sunt tempor dolore ea qui non occaecat.'),
            leading: Icon(
              Icons.phone,
              color: Apptheme.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('OK'),
                ),
                TextButton(onPressed: () {}, child: const Text('Cancel'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
