import 'package:final_v2/Componets/Reuasability_classes.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ctgicu extends StatefulWidget {
  @override
  _ctgicuState createState() => _ctgicuState();
}

class _ctgicuState extends State<ctgicu> {
  final List<String> name = <String>[
    'Chittagong medical \ncollege Hospital',
  ];

  final List<String> call = <String>[
    '01769247568',
  ];

  final List<String> icubednumber = <String>[
    '12',
  ];

  final List<String> address = <String>[
    'Chittagong',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xd8f3eded),
      appBar: AppBar(
        title: Text('Available Within Chittagong'),

        //  centerTitle: true,
      ),
      body: Center(
          child: Icu_menu_item(name: name, call: call, icubednumber: icubednumber, address: address)),
    );
  }
}
