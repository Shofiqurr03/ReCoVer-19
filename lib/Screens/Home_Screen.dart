import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_v2/Componets/Reuasability_classes.dart';
import 'package:final_v2/Screens/call%20page/call.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final screens = [MainPage(), Covid_help_desk()];

  int currentIndex = 0;
  int activeIndex = 0;
  final urlImages = [
    // images for slider
    'images/1.jpeg',
    'images/2.jpeg',
    'images/6.jpeg',
    'images/4.jpeg',
    'images/7.png',
    'images/8.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ReCoVer 19',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.blue),
      ),
      body: SafeArea(
        child: Container(
          color: Color(0x40ce8b8b),
          child: ListView(
            // scrollDirection: Axis.vertical,

            // shrinkWrap: true,
            padding: EdgeInsets.zero,

            children: [
              Container(
                padding: EdgeInsets.only(top: 5.h),
                child: Column(
                  children: [
                    CarouselSlider.builder(
                        itemCount: urlImages.length,
                        itemBuilder: (context, index, realIndex) {
                          final urlImage = urlImages[index];

                          return buildImage(urlImage, index);
                        },
                        options: CarouselOptions(
                          height: 300.h,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          reverse: true,
                          autoPlayInterval: Duration(seconds: 4),
                          onPageChanged: (index, reason) =>
                              setState(() => activeIndex = index),
                        )),
                    SizedBox(height: 32.h),
                    buildIndicator(),
                    SizedBox(height: 10.h),
                    Dashboard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // setting images with corner-roundshape
  buildImage(String urlImage, int index) => Container(
        width: double.infinity,
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15.r)),
            child: Image.asset(urlImage, fit: BoxFit.cover)),
      );

  // used for indicator
  buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        effect: CustomizableEffect(
          activeDotDecoration: DotDecoration(
            width: 25.w,
            height: 5.h,
            color: Colors.indigo,
            rotationAngle: 180,
            verticalOffset: -10,
            borderRadius: BorderRadius.circular(24.r),
            dotBorder: DotBorder(
              padding: 2,
              width: 2.w,
              color: Colors.blue,
            ),
          ),
          dotDecoration: DotDecoration(
            width: 20.w,
            height: 5.h,
            color: Colors.deepPurple,
            dotBorder: DotBorder(
              padding: 2,
              width: 2.w,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(2.r),
                topRight: Radius.circular(16.r),
                bottomLeft: Radius.circular(16.r),
                bottomRight: Radius.circular(2.r)),
            //borderRadius: BorderRadius.circular(16),
            verticalOffset: 0,
          ),
        ),
      );
}
