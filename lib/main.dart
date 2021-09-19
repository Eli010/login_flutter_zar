import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_food/src/app.dart';
import 'package:login_food/src/bloc/auth_cubit.dart';
import 'package:login_food/src/repository/implementation/auth_repository.dart';

//routes
// import 'package:login_food/src/routes/routes.dart';
 
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final authCubit = AuthCubit(AuthRepository());
runApp(
  BlocProvider(
    create: (_)=>authCubit..init(),
    child:MyApp.create() ,
  )
);
} 
 
