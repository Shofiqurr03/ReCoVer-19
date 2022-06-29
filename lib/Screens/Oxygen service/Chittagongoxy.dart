import 'package:final_v2/Componets/Reuasability_classes.dart';
import 'package:flutter/material.dart';

class chittagongoxy extends StatelessWidget {
  final List<String> name = <String>[
    'Oxygen Bank',
  ];

  final List<String> call = <String>[
    '01841040540',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Color(0xd8f3eded),
        appBar: AppBar(
          title: Text('Available Within Chittagong'),
          centerTitle: true,
        ),
        body: Oxygen_service_menu_item(name: name, call: call, address: "Chittagong")
    );
  }
}
