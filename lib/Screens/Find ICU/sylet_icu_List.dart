import 'package:final_v2/Componets/Reuasability_classes.dart';
import 'package:flutter/material.dart';


class syleticu extends StatelessWidget {
  final List<String> name = <String>[
    'Sylhet M.A.G.Osmani\nMedical College	',
  ];

  final List<String> call = <String>[
    '0821-713667',
  ];

  final List<String> icubednumber = <String>[
    '10',
  ];

  final List<String> address = <String>[
    'Sylhet',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xd8f3eded),
      appBar: AppBar(
        title: Text('Available Within Sylhet'),

        //  centerTitle: true,
      ),
      body: Center(
          child: Icu_menu_item(name: name, call: call, icubednumber: icubednumber, address: address)
      ),
    );
  }
}
