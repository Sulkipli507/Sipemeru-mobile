import 'package:flutter/material.dart';
import 'package:sipemeru/Components/Login/LoginComponent.dart';
import 'package:sipemeru/size_config.dart';

class LoginScreen extends StatelessWidget {
  
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: LoginComponent(),
    );
  }
}
