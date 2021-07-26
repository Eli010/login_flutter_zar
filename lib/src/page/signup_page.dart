
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_food/src/widgets/boton_widget.dart';
import 'package:login_food/src/widgets/header_widget.dart';
import 'package:login_food/src/widgets/input_widget.dart';


class SignUpPage extends StatelessWidget {

  

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
                          child: Text('PASO 1 :',
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
                    hintext: 'nombre',
                    suffixIcon: Icon(Icons.person,color: Color(0xFFFFA171),),
                    ),
                  SizedBox(height: 25.0,),
                  Input_widget(
                    isPassword: false,
                    hintext: 'email',
                    suffixIcon: Icon(Icons.email,color: Color(0xFFFFA171),),
                    ),
                  SizedBox(height: 40.0,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25.0),
                    child: BotonWidgetDos(
                      textBoton: 'Siguiente', 
                      colorPrimary:Color(0xFFFFA171), 
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, 'registerNP');
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