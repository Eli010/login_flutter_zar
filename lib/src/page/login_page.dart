
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_food/src/widgets/boton_widget.dart';
import 'package:login_food/src/widgets/header_widget.dart';
import 'package:login_food/src/widgets/input_widget.dart';


class LoginPage extends StatelessWidget {

  

@override
Widget build(BuildContext context) {

  final size = MediaQuery.of(context).size;

    return Scaffold(

      body: SingleChildScrollView(
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
                                Navigator.popAndPushNamed(context, 'login');
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
                  // Container(
                    // height: 200,
                  // ),
                  SizedBox(height: size.height*0.55),

                  Input_widget(
                    isPassword: false,
                    keyboarType: TextInputType.emailAddress,
                    hintext: 'email',
                    suffixIcon: Icon(Icons.email,color: Color(0xFFFFA171),),
                    ),
                  SizedBox(height: 25.0,),
                  Input_widget(
                    isPassword: true,
                   hintext: 'contrase??a',
                   suffixIcon: Container(
                     padding: EdgeInsets.only(top: 10.0),
                     child: FaIcon(FontAwesomeIcons.key,color: Color(0xFFFFA171),
                     ))
                  ),
                  SizedBox(height: 40.0,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25.0),
                    child: BotonWidgetDos(textBoton: 'Ingresar', colorPrimary:Color(0xFFFFA171), onPressed: (){}
                    )
                    ),
                  SizedBox(height: 25.0,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 28.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                      GestureDetector(
                        child: Text('??Olvidaste la contrase??a?',style: TextStyle(
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
                      child: Text('Registrarse',style: TextStyle(
                         fontFamily: 'letra',
                         color: Color(0xffFFA171),
                         fontWeight: FontWeight.bold,
                         fontSize: 15 
                          ),
                         ),
                         onTap: (){
                           Navigator.pushReplacementNamed(context, 'signup');
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
}
}