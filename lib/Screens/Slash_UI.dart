



import 'dart:async';

import 'package:final_v2/Screens/call%20page/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class slash_screen extends StatefulWidget {

  @override
  _slash_screenState createState() => _slash_screenState();
}

class _slash_screenState extends State<slash_screen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 5),
            (){

          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Bottombar()));

        }

    );


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(
        child: Stack(
          children: [
            Center(
                child: Image.asset(
                  'images/splash.png',
                )),
            Container(
                margin: EdgeInsets.only(top: 400.h),
                child: Center(
                  child: CircularProgressIndicator(
                    // showing waiting animation

                    strokeWidth: 3.0,
                    backgroundColor: Colors.greenAccent,
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
