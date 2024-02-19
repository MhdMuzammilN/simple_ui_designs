import 'package:design_one/view/welcome_screen/welcome_screen.dart';
// import 'package:design_one/view/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


// https://www.figma.com/file/Jq4bDIVL6K7aTbpf7UGkOr/Onboarding-(Login-%26-Register)--App-Ui-(Community)?type=design&node-id=3-13&mode=design&t=n1njiESRTyaftjWq-0
// https://www.figma.com/file/qytX5GgEGkV7AmqHJJd97M/Login-Screen---House-Rental-Solution-(Community)?type=design&node-id=0-1&mode=design&t=JOuLAZKtajzTGYc7-0