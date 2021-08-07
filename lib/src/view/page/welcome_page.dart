
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_food/src/widgets/boton_widget.dart';



class WelcomePage extends StatelessWidget {


@override
Widget build(BuildContext context) {

    return Scaffold(
       body: Center(
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
                    BotonWidget(
                      icon: FaIcon(FontAwesomeIcons.googlePlusG),
                      colorPrimary: Color(0xffFC7878),
                      textBoton: 'Ingresa con Google',
                       onPressed: (){                 

                       },
                    ),
                     BotonWidget(
                      icon: FaIcon(FontAwesomeIcons.facebook),
                      textBoton: 'Ingrese con facebook', 
                      colorPrimary: Colors.blue[300], 
                      onPressed: (){
                      }
                     ),
                     BotonWidget(
                      icon: Icon(Icons.phone_android),
                      textBoton: 'Ingrese con Teléfono', 
                      colorPrimary: Color(0xFFFFA171), 
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, 'login');
                      }
                     ),
                  ],
                ),
              ),
               SizedBox(height: 60,)
           ],
         ),
       )
    );
}
}