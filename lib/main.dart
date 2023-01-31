import 'package:flutter/material.dart';
import 'package:jewelry/Screens/SignUp_Screen.dart';

void main() {
  runApp(Bijoux());
}

class Bijoux extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Color(0xFF022c43)),
      ),
      home: SignUpScreen(),
    );
  }
}
