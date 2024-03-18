import 'package:flutter/material.dart';
import 'package:internship/screens/doctor_booking_screen.dart';
import 'package:internship/screens/home_page.dart';
import 'package:internship/screens/login_screen.dart';
import 'package:internship/screens/reg_screen.dart';
import 'package:internship/screens/search_hospital.dart';
import 'package:internship/screens/spalsh_screen.dart';
import 'package:internship/service/http_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
