import 'package:flutter/material.dart';

class BotonWidget extends StatelessWidget {
  final String textBoton;
  final Color? colorPrimary;
  final void Function() onPressed;
  final Widget? icon;

  const BotonWidget({ Key? key, 
  required this.textBoton, 
  required this.colorPrimary,
  required this.onPressed, 
  this.icon, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      margin: EdgeInsets.only(top: 20.0),
      width: double.infinity,
      height: 47,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
            primary: colorPrimary ,// background
            onPrimary: Colors.white, // foreground
          ),
          onPressed:this.onPressed ,
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 10),
              Container(
                child: this.icon
              ),
              SizedBox(width: 10),
              Text(this.textBoton,
              // textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'subtitulo',
                // fontWeight: FontWeight.bold
              ),),
            ],
          ),
        ),
      );
  }
}





class BotonWidgetDos extends StatelessWidget {
  final String textBoton;
  final Color? colorPrimary;
  final void Function() onPressed;
  final Widget? icon;

  const BotonWidgetDos({ Key? key, 
  required this.textBoton, 
  required this.colorPrimary,
  required this.onPressed, 
  this.icon, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 40.0),
      // margin: EdgeInsets.only(top: 20.0),
      
            decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xffFFA171).withOpacity(0.5),
            blurRadius: 5,
            spreadRadius: 0.2,
            offset: Offset(
              3.0,
              7.0
            )
          )
        ],
        borderRadius: BorderRadius.circular(40.0),
        border: Border.all(color: Color(0xffFFA171).withOpacity(0.2)),                  
      ),

      width: double.infinity,
      height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
            primary: colorPrimary ,// background
            onPrimary: Colors.white, 
            shadowColor: Color(0xffFFA171),

            elevation: 0.5// foreground
          ),
          onPressed:this.onPressed ,
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 10),
              Container(
                child: this.icon
              ),
              SizedBox(width: 10),
              Text(this.textBoton,
              // textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'letra',
                fontWeight: FontWeight.bold,
                letterSpacing: 1
              ),),
            ],
          ),
        ),
      );
  }
}

