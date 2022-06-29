import 'package:final_v2/Componets/Reuasability_classes.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class mymensinghoxy extends StatelessWidget {
  final List<String> name = <String>[
    'Shining Traders	',
  ];

  final List<String> call = <String>[
    '01711148994',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Color(0xd8f3eded),
        appBar: AppBar(
          title: Text('Available Within Mymensingh'),
          centerTitle: true,
        ),
        body:  Oxygen_service_menu_item(name: name, call: call, address: '2200, Mymensingh',  )    );
  }
}
