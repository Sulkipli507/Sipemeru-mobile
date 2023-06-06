// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, unused_field, unnecessary_new

import 'package:flutter/material.dart';
import 'package:sipemeru/Components/custom_surfix_icons.dart';
import 'package:sipemeru/Components/default_button_custome_color.dart';
import 'package:sipemeru/Screens/Register/RegisterScreen.dart';
import 'package:sipemeru/size_config.dart';
import 'package:sipemeru/utils/constants.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInForm createState() => _SignInForm();
}

class _SignInForm extends State<SignInForm> {
  
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;

  TextEditingController txtEmail = TextEditingController(),
      txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildEmail(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPassword(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Row(children: [
            Checkbox(
                activeColor: kColorGreen,
                value: remember,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                }),
            const Text("Ingat saya"),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Lupa Password",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            )
          ]),
          DefaultButtonCustomeColor(
            color: kColorRedSlow,
            text: "Masuk",
            press: () {},
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RegisterScreen.routeName);
            },
            child: const Text(
              "Belum punya akun daftar disini",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }

  TextFormField buildEmail() {
    return TextFormField(
      controller: txtEmail,
      keyboardType: TextInputType.emailAddress,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'Masukkan email anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kColorRedSlow),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: const CustomSurffixIcon(
            svgIcon: "assets/icons/Mail.svg",
          )),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Masukkan password anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kColorRedSlow),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: const CustomSurffixIcon(
            svgIcon: "assets/icons/Lock.svg",
          )),
    );
  }
}
