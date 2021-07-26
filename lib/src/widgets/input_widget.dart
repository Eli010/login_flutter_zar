import 'package:flutter/material.dart';

class Input_widget extends StatelessWidget {
  final Widget? icon;
  final String? hintext;
  final TextInputType? keyboarType;
  final bool isPassword;
  final Widget? suffixIcon;
  
  const Input_widget({
    this.icon, 
    this.hintext, 
    this.keyboarType, 
    required this.isPassword, 
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 27),
      padding: EdgeInsets.symmetric(horizontal: 20),
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
        borderRadius: BorderRadius.circular(40.0),
        border: Border.all(color: Color(0xffFFA171).withOpacity(0.2)),                  
      ),
      child: TextField(
        keyboardType: this.keyboarType,
        obscureText: this.isPassword,
        // textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: this.hintext,
          hintStyle: TextStyle(
            color: Color(0xffFFA171),
            fontFamily: 'subtitulo',
          ),
          suffixIcon : this.suffixIcon ,
          border: InputBorder.none,
          icon: this.icon
        ),
      ),
    );
  }
}