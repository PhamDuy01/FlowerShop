import 'package:flutter/material.dart';
import 'package:myshop/ui/login/components/body_welcome.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BodyWelcome(),
    );
  }
}
