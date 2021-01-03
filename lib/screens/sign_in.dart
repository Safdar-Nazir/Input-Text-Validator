import 'package:flutter/material.dart';
import 'package:input_text_validator/widgets/custom_button.dart';
import 'package:input_text_validator/widgets/text_field.dart';

import '../size_config.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool _obsecureText;
  final _formkey = GlobalKey<FormState>();
  final List<String> errors = [];
  @override
  void initState() {
    _obsecureText = false;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildEmailField(),
          SizedBox(
            height: getScreenHeight(20),
          ),
          buildPasswordField(),
          SizedBox(
            height: getScreenHeight(20),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Icon(
                  Icons.close_rounded,
                  color: Colors.red,
                ),
                SizedBox(
                  width: getScreenWidth(5),
                ),
                Text(
                  'sd',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(10),
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
    );
  }

  InputTextField buildPasswordField() {
    return InputTextField(
      hintText: 'Password',
      obsecureText: !_obsecureText,
      icon: _obsecureText ? Icons.visibility : Icons.visibility_off,
      onPressed: () {
        setState(() {
          _obsecureText = !_obsecureText;
        });
      },
    );
  }

  InputTextField buildEmailField() {
    return InputTextField(
      validator: (value) {
        if (value.empty) {
          setState(() {
            errors.add('Please enter email');
          });
        }
      },
      hintText: 'Email',
      obsecureText: false,
    );
  }
}
