import 'package:flutter/material.dart';

import 'components/body_signup.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BodySignup(),
    );
  }
}