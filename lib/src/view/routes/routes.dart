import 'package:flutter/material.dart';

//Pages
import 'package:login_food/src/view/page/forgot_password_page.dart';
import 'package:login_food/src/view/page/generate_code_forgot_page.dart';
import 'package:login_food/src/view/page/register_two_page.dart';
import 'package:login_food/src/view/page/signup_page.dart';
import 'package:login_food/src/view/page/verify_page.dart';
import 'package:login_food/src/view/page/welcome_page.dart';
import 'package:login_food/src/view/page/login_page.dart';
import 'package:login_food/src/view/page/home_page.dart';

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