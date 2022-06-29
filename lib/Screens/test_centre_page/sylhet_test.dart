import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class sylhettest extends StatelessWidget {
  final List<String> name = <String>[
    'সিলেট এমএজি ওসমানী \nমেডিকেল কলেজ',
    'শাহজালাল বিজ্ঞান ও \nপ্রযুক্তি বিশ্ববিদ্যালয়	',
    'সীমান্তিক প্যাথলজি ও \nডায়াগনস্টিক সেন্টার,'
  ];

  final List<String> call = <String>[
    '0821-713667',
    '0821-717850',
    '01711399198'
  ];

  final List<String> address = <String>[
    'ওসমানী মেডিকেল, \nসিলেট	',
    '৩১১৪ ইউনিভার্সিটি \nএভিনিউ, সিলেট	',
    'সিলেট'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Color(0xd8f3eded),
        appBar: AppBar(
          title: Text('Available Within Sylhet'),
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
                                height: 80.h,
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
