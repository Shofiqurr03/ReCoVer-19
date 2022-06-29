import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class dha_page extends StatelessWidget {
  final List<String> name = <String>[
    'Evercare Hospital',
    'Square Hospital',
    'Ibn Sina Medical\nCollege Hospital	',
    'Anwar Khan Modern\nMedical College Hospital',
    'Enam Medical College \n& Hospital',
    'United Hospital Limited',
    'Lab Aid Hospital',
    'Aichi Hospital Limited',
    'AMZ Hospital Limited	',
    'Universal Medical \nCollege & Hospital	',
    'Ahsania Mission Cancer \n& General Hospital	',
    'Praava Health \nBangladesh Ltd.',
    'Biomed Diagnostics	',
    'DMFR Molecular \nLab & Diagnostics	',
    'DNA Solution Limited	',
    'CSBF Health Centre	',
    'Dr Lat Path Labs\nBangladesh Pvt. Ltd.	',
    'The DNA Lab Limited	',
    'Gulshan Clinic Limited	',
    'Authentic Diagnostics\n& Consultation Ltd.	',
    'CRL Diagnostics	',
    'icddr,b Molecular \nDiagnostic Laboratory	',
    'Aalok Healthcare Ltd.	',
  ];

  final List<String> call = <String>[
    '09666-710678',
    '01713141447',
    '02-9010396',
    '02-9670295',
    '01716-358146',
    '09666-710666',
    '09666-710606',
    '02-44891001',
    '01847-331010',
    '01841-480000',
    '02-9008919',
    '09666-710648',
    '01624-812178',
    '09606-213233',
    '01313093019',
    '01730-717009',
    '01885-998000',
    '01706-319181',
    '01708-800888',
    '01536-106758',
    '01319-632590',
    '09666-771100',
    '02-8715512',
    '',
  ];

  final List<String> address = <String>[
    'Bashundhara, Dhaka',
    'Panthapath, Dhaka',
    'Kallyanpur, Dhaka',
    'Dhanmondi, Dhaka',
    'Savar Union, Dhaka',
    'Gulshan, Dhaka',
    'Kalabagan, Dhaka',
    'Abdullahpur, Dhaka',
    'Shadhinota Sarani,\nDhaka',
    'New Airport Road,\nDhaka',
    'Uttara, Dhaka',
    'Banani Model Town,\nDhaka',
    'Dhamondi, Dhaka	',
    'Dhamondi, Dhaka',
    'West Panthapath,\nDhaka',
    'Bijoy Shoroni,Dhaka	',
    'West Pathapath,Dhaka	',
    'Panthapath, Dhaka',
    'Bir Uttam Rafiqul\nIslam Ave,Dhaka',
    'Hussaini Dalan Rd,\nDhaka',
    'Green rd, Dhaka',
    'Mohakhali, Dhaka',
    'Kachukhet Rd,\nDhaka',
    '',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Color(0xd8f3eded),
        appBar: AppBar(
          title: Text('Available Within Dhaka'),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: name.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.all(10.r),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.r),
                              child: Image.asset(
                                "images/testsample.jpg",
                                fit: BoxFit.fill,
                                height: 90.h,
                              )),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 15.w,
                              height: 15.h,
                            ),
                            Row(
                              children: [
                                Icon(MdiIcons.hospitalBuilding,
                                    color: Colors.grey),
                                SizedBox(width: 15.w),
                                Text(
                                  '${name[index]}',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(MdiIcons.phoneOutline, color: Colors.grey),
                                SizedBox(width: 15.w),
                                Text('${call[index]}')
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined,
                                    color: Colors.grey),
                                SizedBox(width: 15.w),
                                Text('${address[index]}')
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            IconButton(
                                onPressed: () =>
                                    launch("tel:// ${call[index]}"),
                                icon: Icon(MdiIcons.phoneForwardOutline,
                                    color: Colors.grey)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
