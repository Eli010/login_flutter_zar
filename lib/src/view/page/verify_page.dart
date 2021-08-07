
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_food/src/widgets/boton_widget.dart';
import 'package:login_food/src/widgets/header_widget.dart';


class VerifyPage extends StatelessWidget {

  

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
                                Navigator.popAndPushNamed(context, 'registerNP');
                              },
                              ) ,
                        ),
                        SizedBox(width: size.width*0.18,),
                        Container(
                          child: Text('PASO 3 :',
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
                      child: SvgPicture.asset('assets/svg/registering.svg',height: 250),
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
                  SizedBox(height: size.height*0.5),
                  Container(
                    child: Text('Ingrese su Codigo',style: TextStyle(
                      fontFamily: 'letra',
                      color: Color(0xFFFFA171),
                      fontSize: 27
                    ),),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BotonVerify(),
                      BotonVerify(),
                      BotonVerify(),
                      BotonVerify()
                    ],
                  ),
                  SizedBox(height: 50,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25.0),
                    child: BotonWidgetDos(textBoton: 'VERIFICAR', colorPrimary:Color(0xFFFFA171), onPressed: (){
                      Navigator.pushReplacementNamed(context, 'login');
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

class BotonVerify extends StatelessWidget {
  const BotonVerify({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            // margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0xffFFA171).withOpacity(0.6),
                blurRadius: 5,
                spreadRadius: 0.2,
                offset: Offset(
                  3.0,
                  4.0
                )
              )
            ],
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(color: Color(0xffFFA171).withOpacity(0.2)),                  
          ),

      width: 80,
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType:TextInputType.number ,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintStyle: TextStyle(color: Color(0xffFFA171),fontSize: 30,fontWeight: FontWeight.bold),
          hintText: ' - '

        ),
      ),
    );
  }
}