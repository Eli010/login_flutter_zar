import 'package:flutter/material.dart';
import 'package:login_food/src/page/forgot_password_page.dart';
import 'package:login_food/src/page/generate_code_forgot_page.dart';
import 'package:login_food/src/page/register_two_page.dart';
import 'package:login_food/src/page/signup_page.dart';
import 'package:login_food/src/page/verify_page.dart';

//Pages
import 'package:login_food/src/page/welcome_page.dart';
import 'package:login_food/src/page/login_page.dart';
import 'package:login_food/src/page/home_page.dart';

final routes = <String ,WidgetBuilder>{
  'welcome'   : (BuildContext context) => WelcomePage(),
  'home'      : (BuildContext context) => HomePage(),
  'login'     : (BuildContext context) => LoginPage(),
  'signup'    : (BuildContext context) => SignUpPage(),
  'registerNP': (BuildContext context) => RegisterNuPassPage(),
  'verify'    : (BuildContext context) => VerifyPage(),
  'forgot'    : (BuildContext context) => ForgotPasswordPage(),
  'generateCod'    : (BuildContext context) => GenerateCodeForgot(),
};