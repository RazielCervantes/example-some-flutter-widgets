/// para mas detalles y ver el repositorio dirigirse a:
///
/// https://github.com/RazielCervantes/example-some-flutter-widgets

import 'package:flutter/material.dart';
import 'package:fl_componentes/themes/app_theme.dart';
import 'package:fl_componentes/Widgets/custom_widgets.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final PageController controller = PageController();
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    scrollController.addListener(() {
      // print(
      //     '${scrollController.position.pixels} , ${scrollController.position.maxScrollExtent}');

      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        fetchData();
        // add5();
      }
    });
    super.initState();
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    add5();

    isLoading = false;
    setState(() {});

    if (scrollController.position.pixels + 100 <=
        scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(scrollController.position.pixels + 120,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  void add5() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));

    setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final lastId = imagesIds.last;

    imagesIds.clear();
    imagesIds.add(lastId + 1);
    add5();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return PageView(
      controller: controller,
      children: <Widget>[
        Scaffold(
          body: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            removeBottom: true,
            child: Stack(
              children: [
                RefreshIndicator(
                  color: Apptheme.primary,
                  onRefresh: onRefresh,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    controller: scrollController,
                    itemCount: imagesIds.length,
                    itemBuilder: (BuildContext context, int index) {
                      return FadeInImage(
                          width: double.infinity,
                          height: 300,
                          fit: BoxFit.cover,
                          placeholder:
                              const AssetImage('asssets/jar-loading.gif'),
                          image: NetworkImage(
                              'https://picsum.photos/500/300?image${imagesIds[index]}'));
                    },
                  ),
                ),
                if (isLoading)
                  Positioned(
                      bottom: 40,
                      left: size.width * 0.5 - 30,
                      child: const _LoadingIcon())
              ],
            ),
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: const Text('infinite scroll code view'),
          ),
          body: const SafeArea(
            child: SourceCodeView(
                filePath: 'lib/screens/listview_builder_screen.dart'),
          ),
        )
      ],
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5), shape: BoxShape.circle),
      child: const CircularProgressIndicator(
        color: Apptheme.primary,
      ),
    );
  }
}
