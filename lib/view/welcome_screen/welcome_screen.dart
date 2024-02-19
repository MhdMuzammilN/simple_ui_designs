import 'package:design_one/view/login_screen/login_screen.dart';
import 'package:design_one/view/register_screen/register_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 22),
            child: Container(
              height: 370,
              width: 363,
              padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 52),
              child:
                  Image.asset("assets/welcomescreen.jpg", fit: BoxFit.contain),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 42),
            child: Column(
              children: [
                Text(
                  '''Discover Your
Dream Job here''',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff1F41BB),
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 23),
                  child: Text(
                    "Explore all the existing job roles based on your interest and study major",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const LoginScreen();
                    }));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll(Color(0xff1F41BB)),
                      foregroundColor:
                          const MaterialStatePropertyAll(Colors.white),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const RegisterScreen();
                      }));
                    },
                    style: const ButtonStyle(
                        foregroundColor:
                            MaterialStatePropertyAll(Colors.black)),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
