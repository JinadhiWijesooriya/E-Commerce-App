import 'package:e_selling/common/helper/navigetor/app_navigator.dart';
import 'package:e_selling/common/widget/appbar/app_bar.dart';
import 'package:e_selling/common/widget/button/basic_app_Button.dart';
import 'package:e_selling/presentation/auth/pages/enter_password.dart';
import 'package:e_selling/presentation/auth/pages/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SingInPage extends StatelessWidget {
  const SingInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(hideBack: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signinText(context),
            SizedBox(height: 20),
            _emailField(context),
            SizedBox(height: 20),
            _continueButton(context),
            SizedBox(height: 20),
            _createAccount(context),
          ],
        ),
      ),
    );
  }

  Widget _signinText(BuildContext context) {
    return Text(
      'Sign in',
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Enter Email',
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      ),
    );
  }

  Widget _continueButton(context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.push(context, EnterPasswordPage());
      },
      title: 'Continue',
    );
  }

  Widget _createAccount(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: "Don't you have an account?"),
          TextSpan(
            text: 'Create one',
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    AppNavigator.push(context, SignUpPage());
                  },
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
