import 'package:flutter/material.dart';
import 'package:instagram2/screens/home_page_screen.dart';
import 'package:instagram2/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
 void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Instagram2());
}

class Instagram2 extends StatelessWidget {
  const Instagram2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: LogIn(),
      routes: {
        HomePage.route : (context)=> HomePage()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

