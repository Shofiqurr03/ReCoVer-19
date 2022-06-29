import 'package:final_v2/Screens/Oxygen%20service/Barisaloxy.dart';
import 'package:final_v2/Screens/Oxygen%20service/Chittagongoxy.dart';
import 'package:final_v2/Screens/Oxygen%20service/Jassoreoxy.dart';
import 'package:final_v2/Screens/Oxygen%20service/Jhalkathioxy.dart';
import 'package:final_v2/Screens/Oxygen%20service/Joypurhatoxy.dart';
import 'package:final_v2/Screens/Oxygen%20service/Kishoreganjoxy.dart';
import 'package:final_v2/Screens/Oxygen%20service/Mymensinghoxy.dart';
import 'package:final_v2/Screens/Oxygen%20service/Narshingdioxy.dart';
import 'package:final_v2/Screens/Oxygen%20service/Panchagarhoxy.dart';
import 'package:final_v2/Screens/Oxygen%20service/Pirojpuroxy.dart';
import 'package:final_v2/Screens/Oxygen%20service/Rajshahioxyg.dart';
import 'package:final_v2/Screens/Oxygen%20service/Sylhetoxy.dart';
import 'package:final_v2/Screens/Oxygen%20service/cumillla_oxygen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Dhaka_list.dart';

class District extends StatefulWidget {
  @override
  State<District> createState() => _DistrictState();
}

class _DistrictState extends State<District> {
  final screens = [
    Dhaka_list(),
    cumillaoxy(),
    chittagongoxy(),
    kishoreganjoxy(),
    panchagarhoxy(),
    rajshahioxy(),
    joypurhatoxy(),
    sylhetoxy(),
    narshingdioxy(),
    barisaloxy(),
    jhakathioxy(),
    jassoreoxy(),
    pironjpuroxy(),
    mymensinghoxy(),
  ];

  final List<String> name = <String>[
    'Dhaka',
    'Cumilla',
    'Chittagong',
    'Kishoreganj',
    'Panchagarh',
    'Rajshahi',
    'Joypurhat',
    'Sylhet',
    'Narshingdi',
    'Barisal',
    'Jhalkathi',
    'Jassore',
    'Pirojpur',
    'Mymensingh',
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
