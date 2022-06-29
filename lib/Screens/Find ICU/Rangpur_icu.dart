import 'package:final_v2/Componets/Reuasability_classes.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class rangpuricu extends StatelessWidget {
  final List<String> name = <String>[
    'Rangpur Medical College \nand Hospital	',
  ];

  final List<String> call = <String>[
    '+88052153881',
  ];

  final List<String> icubednumber = <String>[
    '10',
  ];

  final List<String> address = <String>[
    'Rangpur',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xd8f3eded),
      appBar: AppBar(
        title: Text('Available Within Rangpur'),

      ),
      body: Center(
          child: Icu_menu_item(name: name, call: call, icubednumber: icubednumber, address: address)
      ),
    );
  }
}
