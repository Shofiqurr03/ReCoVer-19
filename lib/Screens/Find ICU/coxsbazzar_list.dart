import 'package:final_v2/Componets/Reuasability_classes.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class coxsbazzar extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<coxsbazzar> {
  final List<String> name = <String>[
    'Cox bazar medical \ncollege Hospital',
    '250 bedded Cox bazar\nGeneral Hospital',
  ];

  final List<String> call = <String>[
    '01821-431144',
    '01730-324770',
  ];

  final List<String> icubednumber = <String>[
    '2',
    '2',
  ];

  final List<String> address = <String>[
    'Cox bazar',
    'Cox bazar',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xd8f3eded),
      appBar: AppBar(
        title: Text('Available Within Cox bazar'),

        //  centerTitle: true,
      ),
      body: Center(
          child: Icu_menu_item(name: name, call: call, icubednumber: icubednumber, address: address)),
    );
  }
}
