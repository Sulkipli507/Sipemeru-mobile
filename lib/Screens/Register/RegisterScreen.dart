import 'package:flutter/material.dart';
import 'package:sipemeru/size_config.dart';
import '../../Components/Register/RegisterComponent.dart';

class RegisterScreen extends StatelessWidget {
  
  static String routeName = "/sign_up";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: RegisterComponent(),
    );
  }
}
