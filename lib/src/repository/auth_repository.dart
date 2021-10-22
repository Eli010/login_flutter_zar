import 'package:equatable/equatable.dart';

class AuthUser extends Equatable{
   final String uid;
   final String? email;

   AuthUser(this.uid, this.email);

   @override
   List<Object?> get props => [uid];
}

abstract class AuthRepositoryBase{
  Stream<AuthUser?> get onAuthStateChanged;

  Future<AuthUser?> signInAnonymously();

  Future<AuthUser?> signInWithGoogle();

  Future<AuthUser?> signInWithFacebook();
  
  //cuales son los elementos a enviar
  Future<AuthUser?> createWithEmailAndPassword(String email,String passsword);
  //almacenamos datos
  Future<AuthUser?> signInWithEmailAndPassword(String email,String passsword);

  Future<void> signOut();
}