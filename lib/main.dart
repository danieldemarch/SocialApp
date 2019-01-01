import 'package:flutter/material.dart';
import 'package:posse/ui/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:posse/ui/splash_load.dart';
import 'package:posse/ui/swipe_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'TheGorgeousLogin',
      theme: new ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: _handleCurrentScreen(),
    );
  }
}

Widget _handleCurrentScreen() {
  return new StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return new SplashLoad();
        } else {
          if (snapshot.hasData) {
            return new SwipePage();
          }
          LoginPage login = new LoginPage();
          return login;
        }
      }
  );
}


GoogleSignIn googleSignIn = new GoogleSignIn(signInOption: SignInOption.standard,);



//1. firebase setup (complete)
//2. user class (complete)
//3. event class (complete)
//4. allow editing of both classes
//5. login service (partially complete)
  //MAKE IT ACTUALLY FUCKING CREATE A USER
  //finalize color, possibly add logo, shift upwards
//6. put all that on firebase
//7. location services
//8. swipe feature
//9. private event message rooms
//10. ads
//11. firebase analytics
//12. stupidity prevention
//13. remember me login
//14. make it pretty
//**READY FOR RELEASE**
//15. kick/block people from an event
//16. "party tax?"/payment services (price filter?)
//    if majority of eventgoers report host, host banned and money refunded
//17. friend event finder/filter
//18. rating system for hosting and guests
//19. premium service?
//20. extra event slots?

//THINGS I HAVE STOLEN
//https://startflutter.com/themes/438/
//https://flutterdoc.com/mobileauthenticating-users-with-firebase-and-flutter-240c5557ac7f
//https://github.com/durannumit/flutter_onboarding_screen/tree/master/lib/Animation_Gesture