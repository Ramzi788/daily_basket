import 'package:daily_basket/Constants/themes.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 250),
        child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            children: [
              const Text(
                "Login",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 245, 245, 245)),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Email",
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.only(left: 20, top: 20, bottom: 20)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 245, 245, 245)),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Password",
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.only(left: 20, top: 20, bottom: 20)),
                  ),
                ),
              ),
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
                        onPressed: () {},
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
            ]),
      ),
    );
  }
}
