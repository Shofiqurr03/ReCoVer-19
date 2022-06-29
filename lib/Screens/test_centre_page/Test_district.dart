
import 'package:final_v2/Screens/test_centre_page/khulna_test.dart';
import 'package:final_v2/Screens/test_centre_page/mymensingh_test.dart';
import 'package:final_v2/Screens/test_centre_page/narayanganj_test.dart';
import 'package:final_v2/Screens/test_centre_page/noakhali_test.dart';
import 'package:final_v2/Screens/test_centre_page/rajshahi_test.dart';
import 'package:final_v2/Screens/test_centre_page/satkhira_test.dart';
import 'package:final_v2/Screens/test_centre_page/sylhet_test.dart';
import 'package:final_v2/Screens/test_centre_page/tangail_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'brahmanbaria_test.dart';
import 'chattogram_test.dart';
import 'cumilla_test.dart';
import 'dha_page.dart';
import 'kushtia_test.dart';

class Testcentre extends StatefulWidget {
  @override
  _TestcentreState createState() => _TestcentreState();
}

class _TestcentreState extends State<Testcentre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        title: Text("Covid-19 Test Center List"),
        centerTitle: true,
      ),
      body: Container(
        color: Color(0x40ce8b8b),
        margin: EdgeInsets.only(top: 5),
        child: ListView(

          children: <Widget>[
            Card(
              color: Color(0xd8f3eded),

              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => dha_page(),
                      ));
                },
                leading: Icon(Icons.where_to_vote_sharp),
                title: Text(
                  'Dhaka',
                  style: TextStyle(fontSize: 22),
                ),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
            ),
            Card(
              color: Color(0xd8f3eded),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => chattogramtest(),
                      ));
                },
                leading: Icon(Icons.where_to_vote_sharp),
                title: Text('Chattogram', style: TextStyle(fontSize: 22)),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
            ),
            Card(
              color: Color(0xd8f3eded),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => cumillatest(),
                      ));
                },
                leading: Icon(Icons.where_to_vote_sharp),
                title: Text('Cumilla', style: TextStyle(fontSize: 22)),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
            ),
            Card(
              color: Color(0xd8f3eded),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => brahmanbariatest(),
                      ));
                },
                leading: Icon(Icons.where_to_vote_sharp),
                title: Text('Brahmanbaria', style: TextStyle(fontSize: 22)),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
            ),
            Card(
              color: Color(0xd8f3eded),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => tangailtest(),
                      ));
                },
                leading: Icon(Icons.where_to_vote_sharp),
                title: Text('Tangail', style: TextStyle(fontSize: 22)),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
            ),
            Card(
              color: Color(0xd8f3eded),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => sylhettest(),
                      ));
                },
                leading: Icon(Icons.where_to_vote_sharp),
                title: Text('sylhet', style: TextStyle(fontSize: 22)),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
            ),
            Card(
              color: Color(0xd8f3eded),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => narayanganjtest(),
                      ));
                },
                leading: Icon(Icons.where_to_vote_sharp),
                title: Text('Narayanganj', style: TextStyle(fontSize: 22)),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
            ),
            Card(
              color: Color(0xd8f3eded),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => khulnatest(),
                      ));
                },
                leading: Icon(Icons.where_to_vote_sharp),
                title: Text('Khulna', style: TextStyle(fontSize: 22)),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
            ),
            Card(
              color: Color(0xd8f3eded),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => rajshahitest(),
                      ));
                },
                leading: Icon(Icons.where_to_vote_sharp),
                title: Text('Rajshahi', style: TextStyle(fontSize: 22)),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
            ),
            Card(
              color: Color(0xd8f3eded),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => mymensinghtest(),
                      ));
                },
                leading: Icon(Icons.where_to_vote_sharp),
                title: Text('Mymensingh', style: TextStyle(fontSize: 22)),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
            ),
            Card(
              color: Color(0xd8f3eded),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => kushtiatest(),
                      ));
                },
                leading: Icon(Icons.where_to_vote_sharp),
                title: Text('Kushtia', style: TextStyle(fontSize: 22)),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
            ),
            Card(
              color: Color(0xd8f3eded),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => satkhiratest(),
                      ));
                },
                leading: Icon(Icons.where_to_vote_sharp),
                title: Text('Satkhira', style: TextStyle(fontSize: 22)),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
            ),
            Card(


              color: Color(0xd8f3eded),


              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => noakhalitest(),
                      ));
                },
                leading: Icon(Icons.where_to_vote_sharp),
                title: Text('Noakhali', style: TextStyle(fontSize: 22)),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
