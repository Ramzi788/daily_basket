// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:daily_basket/Constants/themes.dart';
import 'package:daily_basket/Constants/vars.dart';
import 'package:daily_basket/users/Screens/MoreScreen.dart';
import 'package:daily_basket/users/authentication/RegisterScreen.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isVisible = false;
  final formKey = GlobalKey<FormState>();
  var eController = TextEditingController();
  var pController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 120),
        child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            children: [
              const Text(
                "Login",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 245, 245, 245)),
                        child: TextFormField(
                          controller: eController,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Enter Required Field';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.mail, color: Colors.green),
                              hintText: "Email",
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 245, 245, 245)),
                        child: TextFormField(
                          controller: pController,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Enter Required Field';
                            }
                            return null;
                          },
                          obscureText: !_isVisible,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.fingerprint,
                                color: Colors.green,
                              ),
                              suffixIcon: IconButton(
                                splashRadius: 1,
                                onPressed: () {
                                  setState(() {
                                    _isVisible = !_isVisible;
                                  });
                                },
                                icon: Icon(
                                    _isVisible
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.black),
                              ),
                              hintText: "Password",
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // ---------------------------------------- Password Input ---------------------------------

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 245, 245, 245)),
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      child: Text(
                        "LOGIN",
                        textAlign: TextAlign.center,
                        style: theme()
                            .textTheme
                            .headline2
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't Have an Account ?",
                        style: theme().textTheme.headline3?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.normal)),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Register(),
                              ));
                        },
                        child: Text("Sign up",
                            style: theme()
                                .textTheme
                                .headline3
                                ?.copyWith(color: Colors.green)))
                  ],
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "OR",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 245, 245),
                      border: Border.all(
                          color: const Color.fromARGB(255, 190, 188, 188)),
                      borderRadius: BorderRadius.circular(10)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.white,
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.network(
                            'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: Text(
                              "Login With Google",
                              textAlign: TextAlign.center,
                              style: theme().textTheme.headline2?.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              //-----------------------Login with Facebook------------------------
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 245, 245),
                      border: Border.all(
                          color: const Color.fromARGB(255, 190, 188, 188)),
                      borderRadius: BorderRadius.circular(10)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.white,
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.network(
                            'https://www.transparentpng.com/thumb/facebook-logo-png/background-facebook-logo-5.png',
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: Text(
                              "Login With Facebook",
                              textAlign: TextAlign.center,
                              style: theme().textTheme.headline2?.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
