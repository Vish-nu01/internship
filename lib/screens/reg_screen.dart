import 'package:flutter/material.dart';

import '../widgets/gradient_button.dart';
import '../widgets/login_field.dart';
import '../widgets/social_button.dart';

class Reg_Screen extends StatelessWidget {
  const Reg_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height:50),
              Image.asset('assets/images/doc.png',alignment: Alignment.center,

              ),
              const SizedBox(height:50),
              const Text(
                'Sign in.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              const SizedBox(height: 50),
              const SocialButton(iconPath: 'assets/svgs/g_logo.svg', label: 'Continue with Google'),
              const SizedBox(height: 20),
              // const SocialButton(
              //   iconPath: 'assets/svgs/f_logo.svg',
              //   label: 'Continue with Facebook',
              //   horizontalPadding: 90,
              // ),
              const Text(
                'or',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 15),
              const LoginField(hintText: 'Email'),
              const SizedBox(height: 15),
              const LoginField(hintText: 'Password'),
              const SizedBox(height: 20),
              const GradientButton(),
            ],
          ),
        ),
      ),
    );
  }
}
