import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:internship/screens/home_page.dart';

import 'appointment_screen.dart';
import 'settings_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

int index = 0;
List<Widget> screens = [const HomePage(), const AppointmentScreen(), const SettingsPage()];

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    log('build called');
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.medical_services_outlined), label: 'Appoinments'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: 'Settings'),
          ]),
    );
  }
}
