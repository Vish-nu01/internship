import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Settings',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.deepPurpleAccent.shade100,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  buildListTile('Account', Icons.account_circle, () {
                    // Navigate to account settings screen
                  }),
                  buildListTile('Notifications', Icons.notifications, () {
                    // Navigate to notifications settings screen
                  }),
                  buildListTile('Privacy', Icons.lock, () {
                    // Navigate to privacy settings screen
                  }),
                  buildListTile('Help & Feedback', Icons.help, () {
                    // Navigate to help & feedback screen
                  }),
                  buildListTile('About', Icons.info, () {
                    // Navigate to about screen
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListTile(String title, IconData icon, Function() onTap) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: Icon(
            icon,
            size: 32.0,
            color: Colors.deepPurpleAccent,
          ),
          onTap: onTap,
        ),
        Divider(
          color: Colors.grey[400],
          height: 0,
          thickness: 1,
        ),
      ],
    );
  }
}
