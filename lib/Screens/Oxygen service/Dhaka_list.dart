import 'package:final_v2/Componets/Reuasability_classes.dart';
import 'package:flutter/material.dart';


class Dhaka_list extends StatefulWidget {
  @override
  State<Dhaka_list> createState() => _Dhaka_listState();
}

class _Dhaka_listState extends State<Dhaka_list> {
  final List<String> name = <String>[
    'Songjog',
    'Priyojon',
    'Oxygen Bank',
    'Linde Bangladesh',
    'Israt Care Givers',
    'Medi Shop',
    'Timely Product Ltd',
    'Amar Astha',
    'Oxygen Cylinder BD',
    'Nursing Home Care',
    'Spectra Oxygen Ltd.',
    'Maisha Care Ltd',
    'Prova Oxygen',
    'Azaan Oxygen',
    'Oxygen BD',
    'Oxygen24 BD',
    'Oxygen Cylinder',
    'Oxygen Cylinder Bazar',
    'Oxygen Dhaka	',
    'Ethan Medical Instru.',
    'apnardeal.com	',
    'Oxygen Cylinder Service',
    'Oxygen Service BD'
  ];

  final List<String> call = <String>[
   " 01711930935",
    "09603603603",
    "01873852320",
   " 01708500600",
    "01911545552",
    "01682000000",
    "01712444336",
   " 1920360653",
    "01714585817",
    "01719661366",
    "01755544222",
   " 01718930914",
   " 01716961897",
   " 01766506872",
   " 01795228222",
    "01957819316",
    "01709195900",
    "01718489286",
    "01725554233",
    "01819408980",
    "01950555666",
    "01716089838",
    "01857419682"
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Color(0xd8f3eded),
        appBar: AppBar(
          title: Text('Available Within Dhaka'),
          centerTitle: true,
        ),
        body:  Oxygen_service_menu_item(name: name, call: call, address:  'Dhaka')
    );
  }
}
