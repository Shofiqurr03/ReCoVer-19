import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BoardApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<BoardApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(child: MyHome()),
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  // Wrapper Widget
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var firestoreDB = FirebaseFirestore.instance.collection("board").snapshots();

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => showAlert(context));
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Container(
                  child:
                      Text("Note:This calculation is based on infected cases"),
                  alignment: Alignment.topCenter,
                  margin:
                      EdgeInsets.only(right: 50, left: 50, bottom: 10, top: 10).r,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.r),
                      color: Color(0x1D2DF3E2)),
                ),
                SizedBox(height: 14.h),
                Container(
                  height: 60.h,
                  padding: EdgeInsets.all(10.r),
                  margin: EdgeInsets.symmetric(horizontal: 10.r),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0x434ADC15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "District Name",
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        color: Colors.grey,
                        height: 35.h,
                        width: 2.w,
                      ),
                      Text("Risk Level",
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 9,
            child: StreamBuilder(
              stream: firestoreDB,
              builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                if (streamSnapshot.hasData) {
                  return ListView.builder(
                    itemCount: streamSnapshot.data.docs.length,
                    itemBuilder: (context, index) {
                      final DocumentSnapshot documentSnapshot =
                          streamSnapshot.data.docs[index];
                      return Container(
                        child: Column(
                          children: [
                            Card(
                              margin: EdgeInsets.only(
                                  right: 18, top: 10, bottom: 10, left: 18).r,
                              child: ListTile(
                                leading: Text(
                                  documentSnapshot['name'],
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold),
                                ),


                                trailing: Text(
                                  documentSnapshot['level'],
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      color: Color(0x9aee0d2d),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }

                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor:  Color(0xffce8b8b),
              title: Text("Alart"),
              content: Text(
                "Make sure you are fully vaccinated before travel to these destinations.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
              ),
              actions: [
                OutlinedButton(
                  child: Text(
                    "CLOSE",
                    style: TextStyle(fontSize: 15.sp,color: Colors.black54),
                  ),
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r)),
                      side: BorderSide(color: Colors.blue)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ));
  }
}
