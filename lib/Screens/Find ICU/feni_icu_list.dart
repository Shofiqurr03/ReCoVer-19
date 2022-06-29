import 'package:final_v2/Componets/Reuasability_classes.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class feniicu extends StatelessWidget {
  final List<String> name = <String>[
    '250 bedded Feni General \nHospital',
  ];

  final List<String> call = <String>[
    '01730324771',
  ];

  final List<String> icubednumber = <String>[
    '10',
  ];

  final List<String> address = <String>[
    'Feni',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xd8f3eded),
      appBar: AppBar(
        title: Text('Available Within Feni'),

        //  centerTitle: true,
      ),
      body: Center(
          child: Icu_menu_item(name: name, call: call, icubednumber: icubednumber, address: address)
      ),
    );
  }
}
