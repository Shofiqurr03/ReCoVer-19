import 'package:final_v2/Screens/Ambulance%20service/ambulance_service.dart';
import 'package:final_v2/Screens/Find%20ICU/District_list.dart';
import 'package:final_v2/Screens/Oxygen%20service/District_List.dart';
import 'package:final_v2/Screens/a_I_chatbot.dart';
import 'package:final_v2/Componets/covid_statistics_bottom_tapbar.dart';
import 'package:final_v2/Screens/registration_web_view.dart';
import 'package:final_v2/Screens/test_centre_page/Test_district.dart';
import 'package:final_v2/Screens/travel_warning_firebase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: GridView(
        physics: NeverScrollableScrollPhysics(),
        //  scrollDirection: Axis.vertical,
        shrinkWrap: true,

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15.0,

          // childAspectRatio: .90,
        ),
        children: [
          Dashboard_menu_item(
            text: 'Registration',
            color1: Color(0x2513CB34),
            color2: Color(0xfff2f0fe),
            color3: Color(0xff13cb34),
            icon: MdiIcons.accountMultipleCheckOutline,
            route: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegistrationPage(),
                  ));
            },
          ),
          Dashboard_menu_item(
            text: 'A.I. Doctor',
            color1: Color(0xfffae1f9),
            color2: Color(0xfffdeefe),
            color3: Color(0xffe184cc),
            icon: MdiIcons.stethoscope,
            route: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Chat(),
                  ));
            },
          ),
          Dashboard_menu_item(
            text: 'Covid Statistics',
            color1: Color(0xfffcdecb),
            color2: Color(0xfffdf2eb),
            color3: Color(0xfffa8e77),
            icon: Icons.coronavirus_outlined,
            route: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            },
          ),
          Dashboard_menu_item(
            text: 'Travel Warning',
            color1: Color(0xFFFDF1C6),
            color2: Color(0xfffdf8e6),
            color3: Color(0xffebbe7e),
            icon: MdiIcons.shieldCheckOutline,
            route: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BoardApp()));
            },
          ),
          Dashboard_menu_item(
            text: 'Test Centre',
            color1: Color(0xffd7eefe),
            color2: Color(0xfff1f8fe),
            color3: Color(0xff53a3e6),
            icon: MdiIcons.mapMarkerMultipleOutline,
            route: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Testcentre()));
            },
          ),
          Dashboard_menu_item(
            text: 'Ambulance Service',
            color1: Color(0xffdfd6fe),
            color2: Color(0xfff2f0fe),
            color3: Color(0xff9b87e0),
            icon: MdiIcons.ambulance,
            route: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ambulance_service()));
            },
          ),
          Dashboard_menu_item(
            text: 'Oxygen Service',
            color1: Color(0xffb8eddb),
            color2: Color(0xffe2fdf5),
            color3: Color(0xff58ac8f),
            icon: AntDesign.medicinebox,
            route: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => District()));
            },
          ),
          Dashboard_menu_item(
            text: 'Find ICU',
            color1: Color(0x3e21ef0a),
            color2: Colors.white,
            color3: Color(0xfd80c179),
            icon: MdiIcons.bedOutline,
            route: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => icuDistrict()));
            },
          ),
        ],
      ),
    );
  }
} // dashboard reuasability class

///////////////////////////////////////////////////////////////////////////////////////////////

class Dashboard_menu_item extends StatelessWidget {
  Color color1;
  Color color2;
  Color color3;
  String text;
  IconData icon;

  void Function() route;

  Dashboard_menu_item(
      {this.color1,
      this.route,
      this.text,
      this.color2,
      this.color3,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.r),
          bottomLeft: Radius.circular(20.r),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: color1,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.r),
            bottomLeft: Radius.circular(20.r),
          ),
        ),
        child: InkWell(
          onTap: route,
          child: Column(
            children: [
              SizedBox(height: 22.h),
              Container(
                height: 90.h,
                width: 90.w,
                child: CircleAvatar(
                  backgroundColor: color2,
                  child: Icon(
                    icon,
                    color: color3,
                    size: 50,
                  ),
                ),
              ),
              SizedBox(height: 18.h),
              Text(
                text,
                style: TextStyle(
                    color: color3,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp),
              )
            ],
          ),
        ),
      ),
    );
  }
} // Dashboard-menu-item reuasability class

///////////////////////////////////////////////////////////////////////////////////////////////

class Ambulance_service_list_item extends StatelessWidget {
  String text1;
  String text2;

  Ambulance_service_list_item({
    this.text1,
    this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.r),
      ),
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
                    "images/am4.jpg",
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
                    Icon(MdiIcons.busMarker, color: Colors.grey),
                    SizedBox(width: 15.w),
                    Text(
                      text1,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(MdiIcons.phoneOutline, color: Colors.grey),
                    SizedBox(width: 15.w),
                    Text(text2)
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined, color: Colors.grey),
                    SizedBox(width: 15.w),
                    Text('Dhaka')
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
                  height: 30.h,
                ),
                IconButton(
                    onPressed: () => launch("tel://$text2 "),
                    icon: Icon(MdiIcons.phoneForwardOutline,
                        color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
} // ambulance reuasability class

////////////////////////////////////////////////////////////////////////////////////////////////

class Oxygen_service_menu_item extends StatelessWidget {
  // oxygen reuasability class
  Oxygen_service_menu_item({
    @required this.name,
    @required this.call,
    @required this.address,
  });

  final List<String> name;
  final List<String> call;
  String address;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                            "images/oxygen3.jpg",
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
                            Icon(Icons.group, color: Colors.grey),
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
                            Text(address)
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
                            onPressed: () => launch("tel:// ${call[index]}"),
                            icon: Icon(MdiIcons.phoneForwardOutline,
                                color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}


/////////////////////////////////////////////////////////////////////////////////////////


class Icu_menu_item extends StatelessWidget {
  Icu_menu_item({
    @required this.name,
    @required this.call,
    @required this.icubednumber,
    @required this.address,
  });

  final List<String> name;
  final List<String> call;
  final List<String> icubednumber;
  final List<String> address;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                            "images/icubed1.jpg",
                            fit: BoxFit.fill,
                            height: 120.h,
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
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Icon(MdiIcons.hospitalBuilding,
                                color: Colors.grey),
                            SizedBox(width: 15.w),
                            Text(
                              '${name[index]}',
                              style:
                              TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(MdiIcons.phoneOutline,
                                color: Colors.grey),
                            SizedBox(width: 15.w),
                            Text('${call[index]}')
                          ],
                        ),
                        Row(
                          children: [
                            Icon(MdiIcons.bed, color: Colors.grey),
                            SizedBox(width: 15.w),
                            Text("Total Beds: ${icubednumber[index]}")
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
        });
  }
}


///////////////////////////////////////////////////////////////////////////////////////////



class Call_menu_item extends StatelessWidget {  // used for Call-menu-item

  String phone;

  Call_menu_item({ this.phone
  }) ;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xd8f3eded),
      child: ListTile(
        leading: Icon(MdiIcons.doctor, size: 40),
        title: Text(phone
          // '16263'
        ),
        trailing: IconButton(
            onPressed: () {
              launch("tel://$phone "
                // "16263 "
              );
            },
            icon: Icon(MdiIcons.phoneOutline, color: Colors.grey)),
      ),
    );
  }
}

