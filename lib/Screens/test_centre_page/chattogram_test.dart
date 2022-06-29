import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class chattogramtest extends StatelessWidget {
  final List<String> name = <String>[
    'চট্টগ্রাম ভেটেরিনারি ও \nএনিম্যাল সাইন্সেস \nবিশ্ববিদ্যালয়',
    'চট্টগ্রাম মেডিকেল কলেজ',
    'চট্টগ্রাম বিশ্ববিদ্যালয়',
    'ইমপেরিয়াল হাসপাতাল\nলিমিটেড',
    'শেভরন ক্লিনিক্যাল \nল্যাবরেটরি প্রাঃ লিঃ',
    'চট্টগ্রাম মা-শিশু ও\nজেনারেল হাসপাতাল',
  ];

  final List<String> call = <String>[
    '031-659492',
    '031-630335	',
    '031-717112',
    '09612-247247	',
    '01755-666969	',
    '03125-20063	',
  ];

  final List<String> address = <String>[
    'Khulshi,Chattogram',
    '57 K.B.Fazlul Kader Rd,\nChattogram',
    'Chittagong University\nRd,4331',
    'Zakir Hossain Rd,\nChattogram',
    '2, 12 O.R. Nizam Rd,\nChattogram',
    'Chattogram 4100',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Color(0xd8f3eded),
        appBar: AppBar(
          title: Text('Available Within Chattogram'),
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
                                height: 100.h,
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
