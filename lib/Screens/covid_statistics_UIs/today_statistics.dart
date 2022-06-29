import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

Future<Album> fetchAlbum() async {
  final response =
      await http.get(Uri.parse('https://corona.lmao.ninja/v2/countries/50'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  // final int userId;
  // final int id;

  final int todayCases;
  final int todayDeaths;
  final int todayRecovered;

  Album({this.todayCases, this.todayDeaths, this.todayRecovered});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
        todayCases: json['todayCases'],
        todayDeaths: json['todayDeaths'],
        todayRecovered: json['todayRecovered']);
  }
}

class todaySta extends StatefulWidget {
  @override
  _todayStaState createState() => _todayStaState();
}

class _todayStaState extends State<todaySta> {
  var val;
  Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FutureBuilder<Album>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10.0),
                color: Color(0x5997ffff),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10.w, bottom: 20.h),
                        child: Row(
                          children: [
                            Icon(MdiIcons.album),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              'Today Cases',
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30.w),
                        child: Text(
                          'Note: This Record is Based On BD Cases',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 80.h),
                        child: Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.r)),
                          child: Container(
                            height: 200.h,
                            width: 550.w,
                            decoration: BoxDecoration(
                              color: Color(0x3427b0ff),
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 2.w),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          children: [
                                            Icon(
                                              MdiIcons.virusOutline,
                                              color: Color(0xCBFFB940),
                                              size: 29,
                                            ),
                                            SizedBox(height: 19.h),
                                            Text(
                                              "${snapshot.data.todayCases}",
                                              style: TextStyle(
                                                fontSize: 35.sp,
                                                color: Color(0xD5FFB940),
                                              ),
                                            ),
                                            SizedBox(height: 5.h),
                                            Text(
                                              'Infected',
                                              style: TextStyle(
                                                  fontSize: 20.sp,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          children: [
                                            Icon(
                                              MdiIcons.virusOutline,
                                              color: Color(0xA1DC1710),
                                              size: 29,
                                            ),
                                            SizedBox(height: 19.h),
                                            Text(
                                              "${snapshot.data.todayDeaths}",
                                              style: TextStyle(
                                                fontSize: 35.sp,
                                                color: Color(0xA1DC1710),
                                              ),
                                            ),
                                            SizedBox(height: 5.0.h),
                                            Text(
                                              'Deaths',
                                              style: TextStyle(
                                                  fontSize: 20.sp,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          children: [
                                            Icon(
                                              MdiIcons.virusOutline,
                                              color: Color(0xC360DC14),
                                              size: 29,
                                            ),
                                            SizedBox(height: 19.h),
                                            Text(
                                              "${snapshot.data.todayRecovered}",
                                              style: TextStyle(
                                                fontSize: 35.sp,
                                                color: Color(0xC860DC14),
                                              ),
                                            ),
                                            SizedBox(height: 5.h),
                                            Text(
                                              'Recovered',
                                              style: TextStyle(
                                                  fontSize: 20.sp,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //1st
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
              );
            }

            //Text(snapshot.data!.title);

            // By default, show a loading spinner.
            return Center(child: const CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
