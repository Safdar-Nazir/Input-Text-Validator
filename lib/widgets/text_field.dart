import 'package:flutter/material.dart';
import 'package:input_text_validator/constant.dart';
import 'package:input_text_validator/size_config.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key key,
    @required this.hintText,
    this.icon,
    @required this.obsecureText,
    this.onPressed,
    this.validator,
  }) : super(key: key);

  final String hintText;
  final IconData icon;
  final bool obsecureText;
  final Function onPressed, validator;

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getScreenWidth(10),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.black54,
        ),
      ),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        validator: validator,
        obscureText: obsecureText,
        decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 17),
          hintText: hintText,
          suffixIcon: IconButton(
            icon: Icon(
              icon,
            ),
            onPressed: onPressed,
            color: Colors.black54,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
        ),
      ),
    );
  }
}
