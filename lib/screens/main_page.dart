import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:internship/screens/home_page.dart';

import 'appointment_screen.dart';
import 'settings_page.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    log('build called');
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (BuildContext context, int newIndex, _) {
        return Scaffold(
          body: screens[newIndex],
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: newIndex,
              onTap: (value) {
                indexChangeNotifier.value = value;
              },
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.medical_services_outlined),
                    label: 'Appoinments'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings_outlined), label: 'Settings'),
              ]),
        );
      },
    );
  }
}

//int index = 0;
List<Widget> screens = [
  HomePage(),
  const AppointmentScreen(),
  const SettingsPage()
];
