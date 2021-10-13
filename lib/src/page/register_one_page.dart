
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_food/src/bloc/auth_cubit.dart';
import 'package:login_food/src/routes/routes.dart';
import 'package:login_food/src/widgets/boton_widget.dart';
import 'package:login_food/src/widgets/header_widget.dart';
import 'package:login_food/src/widgets/input_widget.dart';


class RegisterOnePage extends StatefulWidget {

static Widget create(BuildContext context) => RegisterOnePage();  

  @override
  _RegisterOnePageState createState() => _RegisterOnePageState();
}

class _RegisterOnePageState extends State<RegisterOnePage> {

  final _formKey           = GlobalKey<FormState>();
  final _emailController   = TextEditingController();
  final _passwordController= TextEditingController();
  final _repeatPasswordController = TextEditingController();

  //validar campos
  String? emailValidator(String? value){
    return (value == null || value.isEmpty)?'this is required field':null;
  }

  String? passwordValidator(String? value){
    if(value == null || value.isEmpty)return 'este campo requiere datos';
    if(value.length < 6 )return 'la contraseña debe tener más de 6 caracteres';
    if(_passwordController.text != _repeatPasswordController )return 'no coinciden';
    
  }

@override
Widget build(BuildContext context) {

  final size = MediaQuery.of(context).size;
    return Scaffold(

      body: BlocBuilder<AuthCubit,AuthState>(
        builder: (_,state){
          return Form(
            key: _formKey,
            child: SingleChildScrollView(
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
                                    Navigator.pushNamed(context, Routes.emailSignIn);
                                  },
                                  ) ,
                            ),
                            SizedBox(width: size.width*0.10,),
                            Container(
                              child: Text('CREAR CUENTA',
                              style: TextStyle(
                                letterSpacing: 1.5,
                                fontSize: 25.0,
                                fontFamily: 'subtitulo',
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.0,),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          // child: Image(image: AssetImage('assets/img/phone_mr.png'),fit: BoxFit.fill,),
                          child: SvgPicture.asset('assets/svg/hamburger.svg',height: 250),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                  
                    SizedBox(height: size.height*0.55),
                    if (state is AuthSignedIn)Center(child: CircularProgressIndicator()),
                    if (state is AuthError)Text(state.message,style: TextStyle(color:Colors.red)),
                    Input_widget(
                        validator: emailValidator ,
                        controller: _emailController,
                        isPassword: false,
                        hintext: 'email',
                        suffixIcon: Icon(Icons.email,color: Color(0xFFFFA171),),
                        ),
                    SizedBox(height: 25.0,),
                    Input_widget(
                        controller:_passwordController,
                        isPassword: false,
                        hintext: 'contraseña',
                        suffixIcon: Icon(Icons.lock,color: Color(0xFFFFA171),),
                        ),
                    SizedBox(height: 25.0,),
                    Input_widget(
                        controller:_repeatPasswordController,
                        isPassword: false,
                        hintext: 'confirmar contraseña',
                        suffixIcon: Icon(Icons.lock,color: Color(0xFFFFA171),),
                        ),
                    SizedBox(height: 40.0,),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 25.0),
                        child: BotonWidgetDos(
                          textBoton: 'Crear', 
                          colorPrimary:Color(0xFFFFA171), 
                          onPressed: (){
                            if (_formKey.currentState?.validate()==true) {
                              context.read<AuthCubit>().createWithEmailAndPassword(
                                _emailController.text, 
                                _passwordController.text
                                );
                            }
                          }
                        )
                        )
                   ],
                  ),
                ],
              ),
            ),
        ),
          );

        },
      ),
    );
}
}