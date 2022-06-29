import 'package:final_v2/Componets/Reuasability_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Covid_help_desk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid-19 Helpline Desk '),
      ),
      body: Center(
        child: Container(
          color: Color(0x40ce8b8b),
          child: ListView(

            shrinkWrap: true,
            children: [
              Call_menu_item(phone: '16263'),
              SizedBox(height: 15.h),
              Call_menu_item(phone: '333'),
              SizedBox(height: 15.h),
              Call_menu_item(phone: '+8801944333222'),
              SizedBox(height: 15.h),
              Call_menu_item(phone: '+8801937000011'),
              SizedBox(height: 15.h),
              Call_menu_item(phone: '8801937110011'),
              SizedBox(height: 15.h),
              Call_menu_item(phone: '8801927711784 '),
              SizedBox(height: 15.h),
              Call_menu_item(phone: '8801927711785'),
              SizedBox(height: 15.h),
              Call_menu_item(phone: '+8801401184551'),
              SizedBox(height: 15.h),
              Call_menu_item(phone: '8801401184554'),
              SizedBox(height: 15.h),
              Call_menu_item(phone: '8801401184555'),
              SizedBox(height: 15.h),
              Call_menu_item(phone: '8801401184556'),
              SizedBox(height: 15.h),
              Call_menu_item(phone: '8801401184559'),
              SizedBox(height: 15.h),
              Call_menu_item(phone: '8801401184560'),
              SizedBox(height: 15.h),
              Call_menu_item(phone: '8801401184563'),
              SizedBox(height: 15.h),
            ],
          ),
        ),
      ),
    );
  }
}
