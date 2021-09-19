import 'package:flutter/material.dart';


class SplashPage extends StatelessWidget {

static Widget create(BuildContext context)=>SplashPage();

@override
Widget build(BuildContext context) {

    return Scaffold(
       body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            CircularProgressIndicator(),
            SizedBox(height: 20.0,),
            Text('Bienvenido..!!'),
          ]
          ),
       ),
    );
}
}