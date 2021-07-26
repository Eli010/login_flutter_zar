
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_food/src/widgets/boton_widget.dart';
import 'package:login_food/src/widgets/header_widget.dart';
import 'package:login_food/src/widgets/input_widget.dart';


class RegisterNuPassPage extends StatelessWidget {

  

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
                                Navigator.popAndPushNamed(context, 'signup');
                              },
                              ) ,
                        ),
                        SizedBox(width: size.width*0.18,),
                        Container(
                          child: Text('PASO 2 :',
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
                    SizedBox(height: 20.0,),
                    Container(
                      // margin: EdgeInsets.symmetric(horizontal: 10),
                      // child: Image(image: AssetImage('assets/img/phone_mr.png'),fit: BoxFit.fill,),
                      child: SvgPicture.asset('assets/svg/icecreams.svg',height: 250),
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
                    hintext: 'celular',
                    keyboarType: TextInputType.number,
                    suffixIcon: Icon(Icons.phone_android,color: Color(0xFFFFA171),size: 30,),
                    ),
                  SizedBox(height: 25.0,),
                  Input_widget(
                    isPassword: true,
                    hintext: 'contraseña',
                    suffixIcon: Container(
                      padding: EdgeInsets.only(top: 10),
                      child: FaIcon(FontAwesomeIcons.key,color: Color(0xFFFFA171),)),
                    ),
                  SizedBox(height: 40.0,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25.0),
                    child: BotonWidgetDos(
                      textBoton: 'Siguiente', 
                      colorPrimary:Color(0xFFFFA171), 
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, 'verify');
                      }
                    )
                    ),
                  // SizedBox(height: 25.0,),
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