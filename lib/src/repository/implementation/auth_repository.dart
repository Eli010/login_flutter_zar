import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:login_food/src/repository/auth_repository.dart';

class AuthRepository extends AuthRepositoryBase{

 final _firebaseAuth = FirebaseAuth.instance;

 AuthUser? _userFromFirebase(User? user)=>
 user == null? null: AuthUser (user.uid,user.email);


  @override
   Stream<AuthUser?> get onAuthStateChanged => 
   _firebaseAuth.authStateChanges().asyncMap((_userFromFirebase));

  @override
  Future<AuthUser?> signInAnonymously() async {
    final user =await _firebaseAuth.signInAnonymously();
    return _userFromFirebase(user.user);
  }

  @override
  Future<void> signOut() async{
    
    await GoogleSignIn().signOut();
    await _firebaseAuth.signOut();

  }

  @override
  Future<AuthUser?> signInWithGoogle() async{
    final googleUser = await GoogleSignIn().signIn();

    final googleAuth = await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
    );
    
    final authResult = await FirebaseAuth.instance.signInWithCredential(credential);
    return _userFromFirebase(authResult.user); 
  }

}