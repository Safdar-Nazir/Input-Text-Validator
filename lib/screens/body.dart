import 'package:flutter/material.dart';
import 'package:input_text_validator/constant.dart';
import 'package:input_text_validator/size_config.dart';
import 'package:input_text_validator/widgets/custom_button.dart';
import 'package:input_text_validator/widgets/text_field.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _obsecureText;

  @override
  void initState() {
    _obsecureText = false;
    super.initState();
  }

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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InputTextField(
                  hintText: 'Email',
                  obsecureText: false,
                ),
                SizedBox(
                  height: getScreenHeight(20),
                ),
                InputTextField(
                  hintText: 'Password',
                  obsecureText: !_obsecureText,
                  icon: _obsecureText ? Icons.visibility : Icons.visibility_off,
                  onPressed: () {
                    setState(() {
                      _obsecureText = !_obsecureText;
                    });
                  },
                ),
                SizedBox(
                  height: getScreenHeight(20),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: CustomButton(
                    buttonText: 'Sign in',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
