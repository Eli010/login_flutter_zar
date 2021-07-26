import 'package:flutter/material.dart';


class HeaderWidget extends StatelessWidget {

@override
Widget build(BuildContext context) {

    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Color(0xffFFA171),
      child: CustomPaint(
        painter: _HeaderPointer(),
      ),
    );
}
}

class _HeaderPointer extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
      
      final lapiz = Paint();

      //propiedades
      lapiz.color = Colors.white;
      lapiz.style = PaintingStyle.fill;
      lapiz.strokeWidth = 0.7;
      final path = new Path();

      //dibujar el path con el lapiz
      // path.moveTo(0, size.height * 0.32);
      // path.quadraticBezierTo(size.width*0.25, size.height * 0.28, size.width * 0.5, size.height * 0.40);
      // path.quadraticBezierTo(size.width*0.3, size.height * 0.3, size.width * 0.5, size.height * 0.40);
      // path.quadraticBezierTo(size.width*0.80, size.height * 0.53, size.width , size.height * 0.40);

      //dibujar el path con el lapiz
      path.moveTo(0,size.height);
      // path.quadraticBezierTo(size.width*0.5, size.height*0.5, size.width,size.height*0.5);
      path.quadraticBezierTo(0, size.height*0.4, 0, size.height*0.48);
      path.quadraticBezierTo(size.width*0.16, size.height*0.53, size.width*0.3, size.height*0.51);
      path.quadraticBezierTo(size.width*0.5, size.height*0.48, size.width*0.7, size.height*0.55);
      path.quadraticBezierTo(size.width*0.85, size.height*0.6, size.width, size.height*0.55);  
      // path.lineTo(size.width, 0);
      // path.lineTo(size.height*0.5, 0);
      path.lineTo(size.width, size.height);

      canvas.drawPath(path, lapiz);
    }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    // throw UnimplementedError();
    return true;
  }

}