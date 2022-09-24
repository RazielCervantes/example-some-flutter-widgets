/// para mas detalles y ver el repositorio dirigirse a:
///
/// https://github.com/RazielCervantes/example-some-flutter-widgets

import 'package:flutter/material.dart';
import 'package:fl_componentes/Widgets/custom_widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: SafeArea(
          child: WidgetWithCodeView(
        sourceFilePath: 'lib/screens/card_screen.dart',
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardWidgetType1(),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
                name: 'Un hermoso paisaje',
                imageUrl:
                    'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000'),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
                imageUrl:
                    'https://www.creativefabrica.com/wp-content/uploads/2021/06/12/mountain-landscape-illustration-design-b-Graphics-13326021-1-1-580x386.jpg'),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
                imageUrl:
                    'https://img.freepik.com/free-vector/best-scene-nature-landscape-mountain-river-forest-with-sunset-evening-warm-tone-illustration_1150-39403.jpg?w=2000'),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
                imageUrl:
                    'https://img.freepik.com/premium-vector/meadows-landscape-with-mountains-hill_104785-943.jpg?w=2000'),
          ],
        ),
      )),
    );
  }
}

 // widget customizado utilizado para desplegar informacion
// import 'package:flutter/material.dart';
// import 'package:fl_componentes/themes/app_theme.dart';

// class CustomCardWidgetType1 extends StatelessWidget {
//   const CustomCardWidgetType1({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         children: [
//           const ListTile(
//             title: Text('Soy un titulo'),
//             subtitle: Text(
//                 'Reprehenderit magna enim eiusmod do ex officia ex pariatur eu. Sunt ex laboris excepteur sint consequat et eu est sit aute adipisicing sunt. Ullamco ipsum culpa deserunt deserunt labore officia cillum sunt tempor dolore ea qui non occaecat.'),
//             leading: Icon(
//               Icons.phone,
//               color: Apptheme.primary,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 TextButton(
//                   onPressed: () {},
//                   child: const Text('OK'),
//                 ),
//                 TextButton(onPressed: () {}, child: const Text('Cancel'))
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }


// import 'package:fl_componentes/themes/app_theme.dart';
// import 'package:flutter/material.dart';

// class CustomCardType2 extends StatelessWidget {
//   final String imageUrl;
//   final String? name;
//   const CustomCardType2({Key? key, required this.imageUrl, this.name})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       clipBehavior: Clip.antiAlias,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
//       elevation: 10,
//       shadowColor: Apptheme.primary.withOpacity(0.5),
//       child: Column(
//         children: [
//           FadeInImage(
//             image: NetworkImage(imageUrl),
//             placeholder: const AssetImage('asssets/jar-loading.gif'),
//             width: double.infinity,
//             height: 230,
//             fit: BoxFit.cover,
//             fadeInDuration: const Duration(milliseconds: 300),
//           ),
//           if (name != null)
//             Container(
//               alignment: AlignmentDirectional.centerEnd,
//               padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
//               child: Text(name!),
//             )
//         ],
//       ),
//     );
//   }
// }
