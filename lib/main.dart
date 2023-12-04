import 'package:flutter/material.dart';
import 'package:travellar/Database/Screens/Screen.dart';
import 'package:travellar/Login.dart';
import 'package:travellar/ahmd/ahmd.dart';
import 'package:travellar/ahmd/hotel_ahmd.dart';
import 'package:travellar/delhi/delhi.dart';
import 'package:travellar/home.dart';
import 'package:travellar/mumbai/mumb.dart';
import 'package:travellar/mumbai/mumhtl.dart';
import 'package:travellar/punjab/punjab.dart';
import 'package:travellar/raj/hotels.dart';
import 'package:travellar/raj/raj.dart';
import 'package:travellar/splash.dart';
import 'package:travellar/surat/surat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home:mydb() ,
    );
  }
}
