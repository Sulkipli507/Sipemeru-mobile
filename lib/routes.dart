// ignore_for_file: duplicate_import

import 'package:flutter/material.dart';
import 'package:sipemeru/Screens/Login/LoginScreen.dart';
import 'package:sipemeru/Screens/Register/RegisterScreen.dart';

import 'Screens/Register/RegisterScreen.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName:(context) => LoginScreen(),
  RegisterScreen.routeName:(context) => RegisterScreen()
};
