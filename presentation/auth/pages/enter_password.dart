import 'package:e_selling/common/helper/navigetor/app_navigator.dart';
import 'package:e_selling/common/widget/appbar/app_bar.dart';
import 'package:e_selling/common/widget/button/basic_app_Button.dart';
import 'package:e_selling/presentation/auth/pages/forgot_password.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EnterPasswordPage extends StatelessWidget {
  const EnterPasswordPage({super.key});

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
            _passwordField(context),
            SizedBox(height: 20),
            _continueButton(),
            SizedBox(height: 20),
            _forgotPassword(context),
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

  Widget _passwordField(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Enter Password',
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      ),
    );
  }

  Widget _continueButton() {
    return BasicAppButton(onPressed: () {}, title: 'Continue');
  }

  Widget _forgotPassword(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: "Forgot Password?"),
          TextSpan(
            text: 'Recive',
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    AppNavigator.push(context, ForgotPasswordPage());
                  },
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
