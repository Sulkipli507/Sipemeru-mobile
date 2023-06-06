// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:sipemeru/Components/Login/LoginForm.dart';
import 'package:sipemeru/size_config.dart';
import 'package:sipemeru/utils/constants.dart';

class LoginComponent extends StatefulWidget {
  @override
  _LoginComponent createState() => _LoginComponent();
}

class _LoginComponent extends State<LoginComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
              child: SingleChildScrollView(
                child : Column(
                  children: [
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.08),
                    SimpleShadow(
                      child: Image.asset("assets/images/sipemeru.png", height: 150, width: 202,),
                      opacity: 0.5,
                      color: mSubtitleColor,
                      offset: const Offset(5, 5),
                      sigma: 2,                     
                    ),
                    Padding(padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Login", style: mTitleStyle,)
                      ],
                    )),
                    const SizedBox(
                      height: 20,
                    ),
                    SignInForm()
                  ],
                ),
              ),
        ),
      ),
    );
  }
}
