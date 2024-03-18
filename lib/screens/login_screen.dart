import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:internship/screens/home_page.dart';
import 'package:internship/screens/reg_screen.dart';

class LoginPage extends StatelessWidget {
  TextEditingController _usernameController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    Map<String, dynamic> data = {};
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(300, 30)),
              onPressed: () {
                // Implement your login logic here
                String username = _usernameController.text;
                String password = _passwordController.text;
                data.addAll({'username': username, 'password': password});
                var json = jsonEncode(data);
                print(json);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
              },
              child: Text('Login'),
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Or Register here'),
                  ),
                  ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(300, 30)),onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RegistrationPage(),));
                  },
                      child: Text(
                        'Register', ))
                ])
          ],
        ),
      ),
    );
  }
}
