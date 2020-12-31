import 'package:flutter/material.dart';
import 'package:input_text_validator/screens/body.dart';
import 'package:input_text_validator/size_config.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
