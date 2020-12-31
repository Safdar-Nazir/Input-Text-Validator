import 'package:flutter/material.dart';
import 'package:input_text_validator/constant.dart';
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
                InputTextField(hintText: 'Password', obsecureText: true),
                SizedBox(
                  height: getScreenHeight(20),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 18,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: kPrimaryColor,
                    padding: EdgeInsets.symmetric(
                        horizontal: getScreenWidth(152),
                        vertical: getScreenHeight(20)),
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

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key key,
    @required this.hintText,
    this.icon,
    @required this.obsecureText,
  }) : super(key: key);

  final String hintText;
  final IconData icon;
  final bool obsecureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getScreenWidth(10),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: kSecondaryColor)),
      child: TextField(
        obscureText: obsecureText,
        decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 17),
          hintText: hintText,
          suffixIcon: IconButton(
            icon: Icon(
              icon,
            ),
            onPressed: () {},
            color: kSecondaryColor,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
        ),
      ),
    );
  }
}
