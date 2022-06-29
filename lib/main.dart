import 'package:final_v2/Screens/Slash_UI.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // firebase initialize

  runApp(
    Myapp(), // slash screen
  );
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // Used for Responsive Design
      designSize:  Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, widget) {
        return MaterialApp(

          debugShowCheckedModeBanner: false,
          home: widget,

        );
      },
      child: slash_screen(),
    );
  }
}
