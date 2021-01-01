import 'package:flutter/material.dart';
import 'package:input_text_validator/constant.dart';
import 'package:input_text_validator/size_config.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    @required this.buttonText,
    @required this.onPressed,
  }) : super(key: key);

  final String buttonText;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      color: kPrimaryColor,
      padding: EdgeInsets.symmetric(
        horizontal: getScreenWidth(152),
        vertical: getScreenHeight(20),
      ),
    );
  }
}
