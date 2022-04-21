// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors
import 'package:app_payflow/modules/home/home_page.dart';
import 'package:app_payflow/modules/login/login_page.dart';
import 'package:app_payflow/modules/splash/splash_page.dart';
import 'package:app_payflow/shared/themes/appcolors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(primaryColor: AppColors.primary),
      home: HomePage(),
    );
  }
}
