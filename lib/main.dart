import 'package:flutter/material.dart';
import 'package:sipemeru/Screens/Login/LoginScreen.dart';
import 'package:sipemeru/routes.dart';
import 'package:sipemeru/theme.dart';

void main() async {
  runApp(
    MaterialApp(
      title: "Sistem Informasi Peminjaman Ruangan",
      theme: theme(),
      initialRoute: LoginScreen.routeName,
      routes: routes,
  ));
}
