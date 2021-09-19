
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_food/src/bloc/auth_cubit.dart';
import 'package:login_food/src/widgets/boton_widget.dart';


class HomePage extends StatelessWidget {

static Widget create(BuildContext context) => HomePage();

@override
Widget build(BuildContext context) {

    return Scaffold(
       body: BlocBuilder<AuthCubit,AuthState>(
         buildWhen: (previus,current)=>current is AuthSignedIn,
         builder: (_,state){
           final authUser = (state as AuthSignedIn).user;
           return Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text('user: ${authUser.uid}'),
                 BotonWidget(
                   textBoton: 'Logout', 
                   colorPrimary: Colors.red, 
                   onPressed: ()=>context.read<AuthCubit>().signOut(),
                   )
               ],
             ),
           );
         }
         ),
    );
}
}