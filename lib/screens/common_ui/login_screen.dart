import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:internship/screens/user_ui/reg_screen.dart';
import '../user_ui/main_page.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    Map<String, dynamic> data = {};
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(300, 30)),
              onPressed: () {
                // Implement your login logic here
                String username = _usernameController.text;
                String password = _passwordController.text;
                data.addAll({'username': username, 'password': password});
                jsonEncode(data);
                //print(json);
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => MainPage(),
                ));
              },
              child: const Text('Login'),
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Or Register here'),
                  ),
                  ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: const Size(300, 30)),onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const RegistrationPage(),));
                  },
                      child: const Text(
                        'Register', ))
                ])
          ],
        ),
      ),
    );
  }
}
