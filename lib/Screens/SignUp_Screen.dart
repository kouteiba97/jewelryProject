import 'package:flutter/material.dart';
import 'package:jewelry/Components/SignUpBody.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SignUpBody(),
      ),
    );
  }
}

// NEEDED METHODS
/* void isSingedIn() async{
    setState(() {
      loading = true;
    });
    preferences = await SharedPreferences.getInstance();
    isLogedin = await googleSignIn.isSignedIn(); // testing if the user logged in or not
    if(isLogedin){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen(),
      ),);
    }
    setState(() {
      loading =false;
    });
  }*/
/*
  Future handleSignIn() async {
    preferences = await SharedPreferences.getInstance();

    setState(() {
      loading = true;
    });
        // GOOGLE STUFF
    GoogleSignInAccount googleUser = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication = await  googleUser.authentication;
    // FIREBASE STUFF

    //google authentication with firebase
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );
    final UserCredential authResult = await firebaseAuth.signInWithCredential(credential);
    final User user = authResult.user;

    if(  user != null){


    }

  }
  @override
  void initState() {
    super.initState();
    isSingedIn();
  }
*/
