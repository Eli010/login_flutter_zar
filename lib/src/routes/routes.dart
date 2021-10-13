
import 'package:flutter/material.dart';
// import 'package:login_food/src/page/forgot_password_page.dart';
// import 'package:login_food/src/page/generate_code_forgot_page.dart';
// import 'package:login_food/src/page/register_two_page.dart';
// import 'package:login_food/src/page/signup_page.dart';
// import 'package:login_food/src/page/verify_page.dart';
// 
// Pages
import 'package:login_food/src/page/login_page.dart';
import 'package:login_food/src/page/register_one_page.dart';
import 'package:login_food/src/page/splash_page.dart';
import 'package:login_food/src/page/welcome_page.dart';
import 'package:login_food/src/page/home_page.dart';
// import 'package:login_food/src/page/login_page.dart';

// final routes = <String ,WidgetBuilder>{
  // 'splash'   : (BuildContext context) => SplashPage(),
  // 'welcome'   : (BuildContext context) => WelcomePage(),
  // 'home'      : (BuildContext context) => HomePage(),
  // 'login'     : (BuildContext context) => LoginPage(),
  // 'signup'    : (BuildContext context) => SignUpPage(),
  // 'registerNP': (BuildContext context) => RegisterNuPassPage(),
  // 'verify'    : (BuildContext context) => VerifyPage(),
  // 'forgot'    : (BuildContext context) => ForgotPasswordPage(),
  // 'generateCod'    : (BuildContext context) => GenerateCodeForgot(),
// };

class Routes {
  static const splash = '/';
  static const welcome = '/welcome';
  static const home = '/home';
  static const createAccount = '/createAccount';
  static const emailSignIn = '/emailSignIn';

  static Route routes (RouteSettings routeSettings){
    switch (routeSettings.name) {
      case splash:
        return _buildRoute(SplashPage.create);
      case welcome:
        return _buildRoute(WelcomePage.create);
      case home:
        return _buildRoute(HomePage.create);
        //crear cuenta
      case createAccount:
        return _buildRoute(RegisterOnePage.create);
        //ingresar a sigup
      case emailSignIn:
        return _buildRoute(LoginPage.create);
      default:
      throw Exception('la ruta no existe');
    }
  }

static MaterialPageRoute _buildRoute(Function build)=>
MaterialPageRoute(builder: (context)=>build(context));
}