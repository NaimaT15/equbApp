// // ignore: import_of_legacy_library_into_null_sa
// import 'package:firebase_auth/firebase_auth.dart';

// class AuthService {

//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   // create user obj based on firebase user
//   User? _userFromUser(User user) {
//     // ignore: unnecessary_null_comparison
//     return user != null ? User(uid: user.uid) : null;
//   }

//   // auth change user stream
//   Stream<User> get user {
//     return _auth.onAuthStateChanged
//       //.map((User user) => _userFromUser(user));
//       .map(_userFromUser);
//   }

//   // sign in anon
//   Future signInAnon() async {
//     try {
//        UserCredential result = await _auth.signInAnonymously();
//       User? user = result.user;
//       return _userFromUser(user!);
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }

//   // sign in with email and password


//   // register with email and password
//   Future registerWithEmailAndPassword(String email, String password) async {
//     try {
//        UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
//       User? user = result.user;
//       return _userFromUser(user!);
//     } catch (error) {
//       print(error.toString());
//       return null;
//     } 
//   }

//   // sign out
//   Future signOut() async {
//     try {
//       return await _auth.signOut();
//     } catch (error) {
//       print(error.toString());
//       return null;
//     }
//   }

// }