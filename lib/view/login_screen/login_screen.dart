import 'package:design_one/my_flutter_app_icons.dart';
import 'package:design_one/view/home_screen/home_screen.dart';
import 'package:design_one/view/register_screen/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    GlobalKey<FormState> loginKey = GlobalKey<FormState>();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(left: 98, right: 98, top: 85, bottom: 70),
              child: Column(
                children: [
                  Text(
                    "Login here",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff1F41BB)),
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Text(
                    '''Welcome back you’ve been missed!''',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 31),
              child: Form(
                key: loginKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: "Email",
                        hintStyle: const TextStyle(color: Color(0xff626262)),
                        labelText: "Email",
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xff1F41BB), width: 2),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      controller: emailController,
                      validator: (value) {
                        if (value.toString().contains("@")) {
                          return null;
                        } else {
                          return "missing @";
                        }
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: "Password",
                          hintStyle: const TextStyle(color: Color(0xff626262)),
                          labelText: "Password",
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xff1F41BB), width: 2),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        controller: passwordController,
                        validator: (value) {
                          if (value!.length != 10) {
                            return "Minimum 10 charchters required";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    const Text(
                      "Forgot your password?",
                      style: TextStyle(
                          color: Color(0xff1F41BB),
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (loginKey.currentState!.validate()) {
                              Navigator.pushAndRemoveUntil(context,
                                  MaterialPageRoute(
                                builder: (context) {
                                  return const HomeScreen();
                                },
                              ), (route) => false);
                            }
                          },
                          style: ButtonStyle(
                              elevation: const MaterialStatePropertyAll(4),
                              foregroundColor: const MaterialStatePropertyAll(
                                  Color(0xffffffff)),
                              backgroundColor: const MaterialStatePropertyAll(
                                  Color(0xff1F41BB)),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Center(
                          child: TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return const RegisterScreen();
                            },
                          ));
                        },
                        child: const Text(
                          "Create new account",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff494949)),
                        ),
                      )),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                const Text(
                  "or continue with",
                  style: TextStyle(
                      color: Color(0xff1F41BB),
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffECECEC),
                            borderRadius: BorderRadius.circular(15)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: const Icon(
                          MyFlutterApp.google,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffECECEC),
                            borderRadius: BorderRadius.circular(15)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: const Icon(
                          MyFlutterApp.facebook,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffECECEC),
                            borderRadius: BorderRadius.circular(15)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: const Icon(
                          MyFlutterApp.apple,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
