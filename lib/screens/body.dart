import 'package:flutter/material.dart';
import 'package:input_text_validator/constant.dart';
import 'package:input_text_validator/screens/sign_in.dart';
import 'package:input_text_validator/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  width: getScreenWidth(375),
                  height: SizeConfig.screenHeight * 0.5,
                  child: Image.asset(
                    'assets/images/header.png',
                  ),
                ),
                Text(
                  'Welcome Back!',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: getScreenHeight(40),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: getScreenHeight(5),
                ),
                Text(
                  'You have been missed',
                  style: TextStyle(
                    color: kTextColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getScreenHeight(20),
            ),
            SignInForm(),
          ],
        ),
      ),
    );
  }
}
