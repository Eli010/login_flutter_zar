

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_food/src/bloc/auth_cubit.dart';
import 'package:login_food/src/routes/routes.dart';
import 'package:login_food/src/widgets/boton_widget.dart';
import 'package:login_food/src/widgets/header_widget.dart';
import 'package:login_food/src/widgets/input_widget.dart';


class LoginPage extends StatefulWidget {

static Widget create(BuildContext context)=>LoginPage();

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();


  String? validators(String? value){
    return (value == null || value.isEmpty)?'los campos son obligatorios':null;
  }

@override
Widget build(BuildContext context) {
  final size = MediaQuery.of(context).size;

    return Scaffold(

      body: BlocBuilder<AuthCubit, AuthState>(
        builder: (_, state) {
          return Form(
            key: _formKey,
            child:       SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: size.height,
          child: Stack(
            children: [
              Container(
                color: Color(0xFFFFA171),
              ),
              HeaderWidget(),
      
              SafeArea(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 25.0),
                          child:GestureDetector(
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              ),
                              onTap: (){
                                Navigator.pushNamed(context, Routes.welcome);
                              },
                              ) ,
                        ),
                        SizedBox(width: size.width*0.18,),
                        Container(
                          child: Text('Bienvenido',
                          style: TextStyle(
                            letterSpacing: 1.5,
                            fontSize: 25.0,
                            fontFamily: 'subtitulo',
                            color: Colors.white70,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.0,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Image(image: AssetImage('assets/img/phone_mr.png'),fit: BoxFit.fill,),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[

                Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (state is AuthSigningIn) Center(child: CircularProgressIndicator()),
                   if (state is AuthError)Text(
                     state.message,
                     style: TextStyle(color: Colors.red,fontSize: 24),
                     ),

                  // Container(
                    // height: 200,
                  // ),
                  SizedBox(height: size.height*0.55),

                  Input_widget(
                    controller: _emailController,
                    validator: validators,
                    isPassword: false,
                    keyboarType: TextInputType.emailAddress,
                    hintext: 'email',
                    suffixIcon: Icon(Icons.email,color: Color(0xFFFFA171),),
                    ),
                  SizedBox(height: 25.0,),
                  Input_widget(
                    controller: _passwordController,
                    validator: validators,
                    isPassword: true,
                   hintext: 'contraseña',
                   suffixIcon: Container(
                     padding: EdgeInsets.only(top: 10.0),
                     child: FaIcon(FontAwesomeIcons.key,color: Color(0xFFFFA171),
                     ))
                  ),
                  SizedBox(height: 40.0,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25.0),
                    child: BotonWidgetDos(
                      textBoton: 'Ingresar', 
                      colorPrimary:Color(0xFFFFA171), 
                      onPressed: (){
                          if (_formKey.currentState?.validate()==true) {
                              context.read<AuthCubit>().signInWithEmailAndPassword(
                                _emailController.text, 
                                _passwordController.text
                                );
                            }
                      }
                    )
                    ),
                  SizedBox(height: 25.0,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 28.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                      GestureDetector(
                        child: Text('¿Olvidaste la contraseña?',style: TextStyle(
                         fontFamily: 'letra',
                         color: Color(0xffFFA171),
                        //  fontWeight: FontWeight.bold,
                         fontSize: 15 
                        ),
                        ),
                        onTap: (){
                          Navigator.pushReplacementNamed(context, 'forgot');
                        },
                      ),
                    GestureDetector(
                      child: Text('Crear Cuenta',style: TextStyle(
                         fontFamily: 'letra',
                         color: Color(0xffFFA171),
                         fontWeight: FontWeight.bold,
                         fontSize: 15 
                          ),
                         ),
                         onTap: (){
                           context.read<AuthCubit>().reset();
                           Navigator.pushNamed(context, Routes.createAccount);
                         },
                    )

                        ],
                      ),
                    ),
                ],
                )
               ],
              )
            ],
          ),
        ),
      ),

            );
        },
      )
      
    );
}
}