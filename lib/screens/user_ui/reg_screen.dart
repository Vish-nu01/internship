import 'package:flutter/material.dart';
import 'main_page.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: RegistrationForm(),
      ),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

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
              decoration: const InputDecoration(labelText: 'Username',border: OutlineInputBorder()),
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
              decoration: const InputDecoration(labelText: 'Email',border: OutlineInputBorder()),
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
              decoration: const InputDecoration(labelText: 'Password',border: OutlineInputBorder()),
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
          const SizedBox(height: 20.0),
          ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(300, 30)),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // Call your registration API here with _username, _email, and _password
                // registerUser(_username, _email, _password);
              }
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainPage(),));
            },
            child: const Text('Register'),
          ),
        ],
      ),
    );
  }
}

