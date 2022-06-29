import 'package:final_v2/Componets/Reuasability_classes.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class khulnaicu extends StatelessWidget {
  final List<String> name = <String>[
    'Khulna Medical College \nHospital	',
    'Shaheed Sheikh Abu \nNaser Specialised \nHospital'
  ];

  final List<String> call = <String>['041-761535', '041-760390'];

  final List<String> icubednumber = <String>['4', '10'];

  final List<String> address = <String>[
    'Khulna',
    'Khulna',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xd8f3eded),
      appBar: AppBar(
        title: Text('Available Within Khulna'),

      ),
      body: Center(
          child: Icu_menu_item(name: name, call: call, icubednumber: icubednumber, address: address)
      ),
    );
  }
}
