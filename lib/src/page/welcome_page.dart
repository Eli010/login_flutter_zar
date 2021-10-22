
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_food/src/bloc/auth_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_food/src/routes/routes.dart';

import 'package:login_food/src/widgets/boton_widget.dart';



class WelcomePage extends StatelessWidget {

static Widget create(BuildContext context)=> WelcomePage();

@override
Widget build(BuildContext context) {

  final isSigningIn = context.watch<AuthCubit>().state is AuthSigningIn;

    return AbsorbPointer(
      absorbing: isSigningIn,
      child: Scaffold(
         body: Center(
            child: SingleChildScrollView(
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                //  SizedBox(height: 200,),
                Text('ZARFETI',style: TextStyle(
                  fontFamily: 'titulo',
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFA171),
                ),),
                Text('City',style: TextStyle(
                 fontFamily: 'titulo',
                 fontSize: 25,
                 color: Color(0xFFFFA171),
                )),
                   SizedBox(height: 20,),
                Container(
                  child:Image(image: AssetImage('assets/img/deliveryGirlsDos.png'),fit: BoxFit.contain,),
                  ),
                   SizedBox(height: 45,),
                  Container(
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        if (isSigningIn)CircularProgressIndicator(),
                        BotonWidget(
                          icon: FaIcon(FontAwesomeIcons.googlePlusG),
                          colorPrimary: Color(0xffFC7878),
                          textBoton: 'Ingresa con Google',
                           onPressed: ()=> context.read<AuthCubit>().signInWithGoogle(),
                        ),
                         BotonWidget(
                          icon: FaIcon(FontAwesomeIcons.facebook),
                          textBoton: 'Ingrese con facebook', 
                          colorPrimary: Colors.blue[300], 
                          onPressed: ()=> context.read<AuthCubit>().signInWithFacebook(),
                         ),
                         BotonWidget(
                          icon: Icon(Icons.email),
                          textBoton: 'Ingrese con Email', 
                          colorPrimary: Color(0xFFFFA171), 
                          onPressed: ()=>Navigator.pushNamed(context, Routes.emailSignIn)
                         ),
                          BotonWidget(
                          icon: Icon(Icons.person),
                          textBoton: 'Ingrese como visitante', 
                          colorPrimary: Colors.purple[300], 
                          onPressed: ()=> context.read<AuthCubit>().signInAnonymously()
                         ),

                      ],
                    ),
                  ),
                   SizedBox(height: 60,)
               ],
           ),
            ),
         )
      ),
    );
}
}