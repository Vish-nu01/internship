import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(16.0),
                children: [
                  ListTile(
                    title: Text('Account'),
                    leading: Icon(Icons.account_circle),
                    onTap: () {
                      // Navigate to account settings screen
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Notifications'),
                    leading: Icon(Icons.notifications),
                    onTap: () {
                      // Navigate to notifications settings screen
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Privacy'),
                    leading: Icon(Icons.lock),
                    onTap: () {
                      // Navigate to privacy settings screen
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Help & Feedback'),
                    leading: Icon(Icons.help),
                    onTap: () {
                      // Navigate to help & feedback screen
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text('About'),
                    leading: Icon(Icons.info),
                    onTap: () {
                      // Navigate to about screen
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
