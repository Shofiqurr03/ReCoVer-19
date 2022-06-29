import 'package:final_v2/Screens/covid_statistics_UIs/today_statistics.dart';
import 'package:final_v2/Screens/covid_statistics_UIs/total_statistics.dart';
import 'package:final_v2/Screens/covid_statistics_UIs/world_wide_statistics.dart';

import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {  // this used for bottom tap bar
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Covid-19 Tracker'),
            centerTitle: true,
            bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  child: Text('Today'),
                ),
                Tab(
                  child: Text('Total'),
                ),
                Tab(
                  child: Text('World Wide'),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              todaySta(),
              totalSta(),
              worldSta(),
            ],
          ),
        ),
      ),
    );
  }
}
