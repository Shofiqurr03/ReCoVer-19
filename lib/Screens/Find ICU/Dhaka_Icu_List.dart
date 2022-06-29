import 'package:final_v2/Componets/Reuasability_classes.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class dhaka_icu extends StatefulWidget {
  @override
  _dhaka_icuState createState() => _dhaka_icuState();
}

class _dhaka_icuState extends State<dhaka_icu> {
  final List<String> name = <String>[
    //19 Elements

    'Dhaka Medical College \nHospital',
    'Sir Salimullah Medical \nCollege & Mitford \nHospital',
    'Shaheed Suhrawardy \nMedical College and \nHospital',
    'Mugda Medical College \nand Hospital',
    'Dhaka Dental College \nand Hospital',
    'Shaheed Tazuddin \nAhmad Medical College \n& Hospital',
    'Faridpur medical college \nhospital',
    'National Heart \nFoundation Hospital',
    'National Institute of \nCancer Research \n& Hospital',
    'National Institute of \nEar, Nose & \nThroat Hospital',
    'National Institute of \nDiseases of the Chest \nand Hospital',
    'National institute of \nneuroscience \nand Hospital',
    'National Institute of\nTraumatology \nOrthopaedic\nRehabilitation',
    'National Institute of \nKidney Diseases \n& Urology',
    'Sheikh Hasina National \nBurn and Plastic \nSurgery Institute',
    'Kurmitola General \nHospital',
    'Dhaka Shishu (Children) \nHospital',
    '250 Bedded General \nHospital',
    '250 Bedded Manikganj \nGeneral Hospital',
  ];

  final List<String> call = <String>[
    '02-55165088',
    '+88027319002-5',
    '0255026702',
    '01844665585',
    '+880-8017146',
    '01942-521139',
    '0631-63331',
    '02-58054708',
    '02-9880078',
    '02-8878155',
    '02-55067131',
    '02-9102142',
    '02-55058938',
    '+880248122484',
    '01819220180',
    '02-55062388',
    '880-2-55059051-61',
    '026685243',
    '27710778',
    '',
    '',
    '',
    ''
  ];

  final List<String> icubednumber = <String>[
    '32',
    '10',
    '10',
    '10',
    '10',
    '10',
    '16',
    '46',
    '13',
    '8',
    '8',
    '20',
    '26',
    '4',
    '80',
    '10',
    '47',
    '10',
    '2',
    '',
    '',
    '',
    ''
  ];

  final List<String> address = <String>[
    'Dhaka',
    'Mitford, Dhaka',
    'Shamoly, Dhaka	',
    'Mugda, Dhaka	',
    'Dhaka',
    'Gazipur',
    'Faridpur',
    'Shere bangla nagar,Dhaka',
    'Mohakhali',
    'Tejgaon',
    'Mohakhali',
    'Agargaon',
    'Shere bangla nagar',
    'Shere bangla nagar',
    'Shere bangla nagar',
    'Tongi',
    'shamoly',
    'Gopalganj',
    'Manikganj',
    '',
    '',
    '',
    ''
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Color(0xd8f3eded),
        appBar: AppBar(
          title: Text('Available Within Dhaka'),

          //  centerTitle: true,
        ),
        body: Icu_menu_item(name: name, call: call, icubednumber: icubednumber, address: address)
    );
  }
}
