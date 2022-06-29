import 'package:final_v2/Componets/Reuasability_classes.dart';
import 'package:flutter/material.dart';


class ambulance_service extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xd8f3eded),
      appBar: AppBar(
        title: Text('Ambulance Service List'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Ambulance_service_list_item(
              text1: 'Labaid Hospital \nAmbulance service',
              text2: '01713330088'),
          Ambulance_service_list_item(
              text1: 'Bangladesh Medical \nCollege Hospital',
              text2: '+880-2-9118202'),
          Ambulance_service_list_item(
              text1: 'CMH (Dhaka)', text2: '+880-2-9871469'),
          Ambulance_service_list_item(
              text1: 'Dhaka Eye Hospital', text2: '+880-2-8014476'),
          Ambulance_service_list_item(
              text1: 'Dhaka Medical College \nHospital',
              text2: '+880-2-8626823'),
          Ambulance_service_list_item(
              text1: 'Dhaka Renal Centre & \nGenera Hospital',
              text2: '+880-2-8610928'),
          Ambulance_service_list_item(
              text1: 'Apollo Hospitals Dhaka', text2: '+8801714-090000'),
          Ambulance_service_list_item(
              text1: 'Apanjon Ambulance \nService', text2: '9125420'),
          Ambulance_service_list_item(
              text1: 'Al-Markazul Islami \nAmbulance Service',
              text2: '9127867'),
          Ambulance_service_list_item(
              text1: 'Life Line Healthcare \nLimited', text2: '+8801199-899919'),
          Ambulance_service_list_item(
              text1: 'Lab-Aid Cardiac Hospital', text2: '+8801713333337'),
          Ambulance_service_list_item(
              text1: 'Rafa Ambulance Service', text2: ' 9110663'),
          Ambulance_service_list_item(
              text1: 'Green Ambulance \nService', text2: '9334121'),
        ],
      ),
    );
  }
}

