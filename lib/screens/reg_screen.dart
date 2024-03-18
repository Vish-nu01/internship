import 'package:flutter/material.dart';
import 'package:internship/screens/home_page.dart';
import 'package:internship/screens/main_page.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: RegistrationForm(),
      ),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Username',border: OutlineInputBorder()),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your username';
                }
                return null;
              },
              onSaved: (value) {
                _username = value!;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Email',border: OutlineInputBorder()),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                else if(!value.contains('@')&&!value.endsWith('.com'))
                {
                  return 'Please enter a valid email format';
                }

                return null;
              },
              onSaved: (value) {
                _email = value!;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Password',border: OutlineInputBorder()),
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your password';
                }
                else if(value.length<=6){
                  return 'password should contain at least 6 charachters';
                }
                return null;
              },
              onSaved: (value) {
                _password = value!;
              },
            ),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(300, 30)),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // Call your registration API here with _username, _email, and _password
                // For example:
                // registerUser(_username, _email, _password);
              }
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainPage(),));
            },
            child: Text('Register'),
          ),
        ],
      ),
    );
  }
}

