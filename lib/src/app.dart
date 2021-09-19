
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_food/src/bloc/auth_cubit.dart';
import 'package:login_food/src/routes/routes.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {


  static Widget create(){
    return BlocListener<AuthCubit,AuthState>(
      listener: (context,state){
        if (state is AuthSignedOut) {
          _navigatorKey.currentState?.pushNamedAndRemoveUntil(Routes.welcome, (route) => false);
        } else if (state is AuthSignedIn){
          _navigatorKey.currentState?.pushNamedAndRemoveUntil(Routes.home, (route) => false);
        }
      },
      child: MyApp(),
      );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: _navigatorKey,
      onGenerateRoute: Routes.routes,
    );
  }
}
