import 'package:flutter/material.dart';
import 'package:fl_componentes/themes/app_theme.dart';
import 'package:fl_componentes/Widgets/custom_widgets.dart';

class SlicerScreen extends StatefulWidget {
  const SlicerScreen({Key? key}) : super(key: key);

  @override
  State<SlicerScreen> createState() => _SlicerScreenState();
}

class _SlicerScreenState extends State<SlicerScreen> {
  double _slidderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('slidder & Checks'),
        ),
        body: WidgetWithCodeView(
          sourceFilePath: 'lib/screens/slicer_screen.dart',
          child: Column(
            children: [
              Slider.adaptive(
                  max: 400,
                  min: 50,
                  activeColor: Apptheme.primary,
                  value: _slidderValue,
                  onChanged: _sliderEnable
                      ? (value) {
                          _slidderValue = value;

                          setState(() {});
                        }
                      : null),
              Checkbox(
                  value: _sliderEnable,
                  onChanged: (value) {
                    _sliderEnable = value ?? true;
                    setState(() {});
                  }),
              CheckboxListTile(
                  activeColor: Apptheme.primary,
                  title: const Text('Habilitar Slider'),
                  value: _sliderEnable,
                  onChanged: (value) => setState(() {
                        _sliderEnable = value ?? true;
                      })),
              Switch(
                  value: _sliderEnable,
                  onChanged: (value) => setState(() {
                        _sliderEnable = value;
                      })),
              SwitchListTile.adaptive(
                  activeColor: Apptheme.primary,
                  title: const Text('Habilitar Slider'),
                  value: _sliderEnable,
                  onChanged: (value) => setState(() {
                        _sliderEnable = value;
                      })),
              const AboutListTile(),
              Expanded(
                child: SingleChildScrollView(
                  child: Image(
                    image: const NetworkImage(
                        'https://img.favpng.com/15/1/20/computer-icons-goal-clip-art-portable-network-graphics-management-png-favpng-mAsvkH3GBvCD0pBr6pEmKVSCt.jpg'),
                    fit: BoxFit.contain,
                    width: _slidderValue,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
