import 'package:final_v2/Componets/Reuasability_classes.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class satkhiraicu extends StatelessWidget {
  final List<String> name = <String>[
    'Satkhira Medical College \nHospital	',
  ];

  final List<String> call = <String>[
    '01943-439777',
  ];

  final List<String> icubednumber = <String>[
    '9',
  ];

  final List<String> address = <String>[
    'Satkhira',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xd8f3eded),
      appBar: AppBar(
        title: Text('Available Within Satkhira'),

        //  centerTitle: true,
      ),
      body: Center(
          child: Icu_menu_item(name: name, call: call, icubednumber: icubednumber, address: address)
      ),
    );
  }
}
