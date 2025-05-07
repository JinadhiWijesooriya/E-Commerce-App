import 'package:e_selling/common/helper/navigetor/app_navigator.dart';
import 'package:e_selling/common/widget/appbar/app_bar.dart';
import 'package:e_selling/common/widget/button/basic_app_Button.dart';
import 'package:e_selling/presentation/auth/pages/enter_password.dart';
import 'package:e_selling/presentation/auth/pages/singin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signinText(context),
            SizedBox(height: 20),
            _firsNameField(context),
            SizedBox(height: 20),
            _lastNameField(context),
            SizedBox(height: 20),
            _emailField(context),
            SizedBox(height: 20),
            _passwordField(context),
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
      'Create Account',
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _firsNameField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'FirstName',
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      ),
    );
  }

  Widget _lastNameField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'LasttName',
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      ),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Email Address',
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
          TextSpan(text: "Do you have an account?"),
          TextSpan(
            text: 'Sign in',
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    AppNavigator.pushReplacement(context, SingInPage());
                  },
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
