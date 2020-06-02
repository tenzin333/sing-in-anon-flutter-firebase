import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_demo/models/user.dart';

class AuthService{
    final FirebaseAuth  _auth = FirebaseAuth.instance;
    
    //create user obj based on firebase
    User _userFromFirebaseUser(FirebaseUser user){
      return  user!=null ? User(uid: user.uid):null;



    }

    //auth  change user strea,m

    Stream<User> get user{

      return _auth.onAuthStateChanged.
      map((FirebaseUser user)=>_userFromFirebaseUser(user));
    }


    //sign in anon

    Future signInAnon() async{
      try{
        AuthResult result=  await _auth.signInAnonymously();
        FirebaseUser user = result.user;
        _userFromFirebaseUser(user);
       
        return user;
        }
      catch(e){
        print(e.toString());
        return null;
      }

    }

      


    //sign in with email & password

    //register with email & password

    //signout


    Future signOut()  async{
      try{
        return await _auth.signOut();

      }
      catch(e){
        print(e.toString());
        return null;

      }
    }



}