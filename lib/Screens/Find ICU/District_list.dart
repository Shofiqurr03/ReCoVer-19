import 'package:final_v2/Screens/Find%20ICU/sylet_icu_List.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Barishal_icu.dart';
import 'Bogura_icu.dart';
import 'Dhaka_Icu_List.dart';
import 'Dinajpur_icu.dart';
import 'Khulna_icu.dart';
import 'Mymensingh_icu.dart';
import 'Pabna_icu.dart';
import 'Rajshahi_icu.dart';
import 'Rangpur_icu.dart';
import 'Satkhira_icu.dart';
import 'coxsbazzar_list.dart';
import 'ctg_icu_list.dart';
import 'feni_icu_list.dart';
import 'jamalpur.dart';

class icuDistrict extends StatefulWidget {
  @override
  _icuDistrictState createState() => _icuDistrictState();
}

class _icuDistrictState extends State<icuDistrict> {
  final screens = [
    dhaka_icu(),
    ctgicu(),
    coxsbazzar(),
    feniicu(),
    syleticu(),
    rangpuricu(),
    dinajpuricu(),
    mymensinghicu(),
    jamalpuricu(),
    Barishalicu(),
    rajshahiicu(),
    boguraicu(),
    pabnaicu(),
    khulnaicu(),
    satkhiraicu(),
  ];

  final List<String> name = <String>[
    'Dhaka',
    'Chittagong',
    'Cox bazar',
    'Feni',
    'Sylhet',
    'Rangpur',
    'Dinajpur',
    'Mymensingh',
    'Jamalpur',
    'Barishal',
    'Rajshahi',
    'Bogura',
    'Pabna',
    'Khulna',
    'Satkhira',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('District List'),
          centerTitle: true,
        ),
        body: Container(
          color: Color(0x40ce8b8b),
          child: ListView.builder(
              padding:  EdgeInsets.all(8.r),
              itemCount: name.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Color(0xd8f3eded),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.r)),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => screens[index],
                          ));
                    },
                    leading: Icon(Icons.where_to_vote_sharp),
                    title: Text(
                      ' ${name[index]}',
                      style: TextStyle(fontSize: 22.sp),
                    ),
                    trailing: Icon(Icons.arrow_forward_outlined),
                  ),
                );
              }),
        ));
  }
}
