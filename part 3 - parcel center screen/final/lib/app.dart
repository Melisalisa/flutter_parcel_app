import 'package:flutter/material.dart';
import 'package:flutter_parcel_app/ui/screens/parcel_center_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_parcel_app/parcel_app_theme.dart';
import 'package:flutter_parcel_app/ui/screens/home_screen.dart';
import 'package:flutter_parcel_app/ui/screens/screens.dart';
import 'package:flutter_parcel_app/ui/screens/send_parcel_detail_screen.dart';
import 'package:flutter_parcel_app/ui/screens/send_parcel_screen.dart';
import 'package:flutter_parcel_app/ui/widgets/my_bottom_navigation_bar.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FLutter',
      theme: ParcelAppTheme.lightTheme,
      home: const Scaffold(
        body: ParcelCenterScreen(),
        bottomNavigationBar: MyBottomNavigationBar(),
      ),
    );
  }
}
