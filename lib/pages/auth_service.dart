import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) return;

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _auth.signInWithCredential(credential);
    } catch (e) {
      print("Google sign-in error: $e");
    }
  }

  // Email and Password Registration Method
  Future<void> registerWithEmail(String name, String email, String password, String confirmPassword) async {
    if (password == confirmPassword) {
      try {
        UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        // Optionally update display name
        await userCredential.user?.updateDisplayName(name);
        print("Registration Successful");
      } catch (e) {
        print("Email registration error: $e");
      }
    } else {
      print("Password and confirm password do not match");
    }
  }

  // New Email and Password Sign-In Method
  Future<void> signInWithEmail(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      print("Login Successful");
    } catch (e) {
      print("Email login error: $e");
      rethrow; // Propagate the error for error handling in Loginpage
    }
  }
}
