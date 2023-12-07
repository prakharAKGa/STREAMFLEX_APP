import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<UserCredential?> signInWithGoogle() async {
  try {
   
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    
    final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;


    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,

    );

       final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);

  
    final User? user = userCredential.user;

    if (user != null) {
      print("User ID: ${user.uid}");
      print("Display Name: ${user.displayName}");
      print("Email: ${user.email}");

  
    }
      return userCredential;
    
  } catch (error) {
    print("Google Sign In Error: $error");
    return null;
  }
}
Future<void> logout() async {

    if (await GoogleSignIn().isSignedIn()) {
    
     await GoogleSignIn().signOut();

    
    }
   await FirebaseAuth.instance.signOut();
  }