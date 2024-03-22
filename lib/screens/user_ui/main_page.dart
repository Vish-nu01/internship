import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:internship/screens/common_ui/settings_page.dart';
import 'appointment_screen.dart';
import 'home_page.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final List<Widget> screens = [
    HomePage(),
    const AppointmentScreen(),
    const SettingsPage()
  ];

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
