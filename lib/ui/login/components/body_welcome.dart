import 'package:flutter/material.dart';
import 'package:myshop/ui/signup/signup_screen.dart';

import 'account_check.dart';
import 'backgroud.dart';
import 'rounded_button.dart';
import 'rounded_field.dart';
import 'rounded_pass.dart';

class BodyWelcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Backgroud(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Text(
          //   "ĐĂNG NHẬP",
          //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          // ),
          const SizedBox(height: 20),
          Image.asset(
            "assets/images/logo.jpg",
            height: size.height * 0.26,
          ),
          RoundedField(
            hintText: "Nhập email của bạn...",
            icon: Icons.person,
            onChanged: (value) {},
          ),
          RoundedPass(
            onChanged: (value) {},
          ),
          const SizedBox(height: 17),
          RoundedButton(),
          const SizedBox(height: 10),
          AccountCheck(
            login: true,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignupScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
