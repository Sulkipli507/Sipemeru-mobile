// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, file_names, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../../utils/constants.dart';
import 'RegisterForm.dart';

class RegisterComponent extends StatefulWidget {
  @override
  _RegisterComponent createState() => _RegisterComponent();
}

class _RegisterComponent extends State<RegisterComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: 
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
              child: SingleChildScrollView(
                child: Column(
                children: [
                  Center(
                    child: Text(
                      "Registrasi",
                      style: headingStyle,
                    ),
                  ),
                  const SizedBox(
                      height: 20,
                  ),
                  SignUpForm(),
                ]
              )
              ),
            )
      )
    );
  }
}
