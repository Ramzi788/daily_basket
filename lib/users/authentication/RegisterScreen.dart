// ignore_for_file: deprecated_member_use

import 'dart:convert';

import 'package:daily_basket/Constants/themes.dart';
import 'package:daily_basket/Constants/vars.dart';
import 'package:daily_basket/api_connection/api_connection.dart';
import 'package:daily_basket/users/authentication/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

import 'model/user.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isNotValid = false;
  var uController = TextEditingController();
  var eController = TextEditingController();
  var pController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  registerUser() async {
    User userModel = User(1, uController.text.trim(), eController.text.trim(),
        pController.text.trim());
    try {
      var res = await http.post(
        Uri.parse(API.signUp),
        body: userModel.toJson(),
      );
      if (res == 200) {
        var resBodyOfSignUp = jsonDecode(res.body);
        if (resBodyOfSignUp['success'] == true) {
          Fluttertoast.showToast(msg: "Sign Up Successful");
        } else {
          Fluttertoast.showToast(msg: "Error occurred.");
        }
      }
    } catch (e) {
      print(e.toString());
      Fluttertoast.showToast(msg: e.toString());
    }
  }

  void validateUserEmail() async {
    try {
      var res = await http.post(Uri.parse(API.validateEmail), body: {
        'user_email': eController.text.trim(),
      });

      if (res.statusCode == 200) {
        var resBody = jsonDecode(res.body);

        if (resBody['emailFound'] == true) {
          Fluttertoast.showToast(msg: "Email is already in use.");
        } else {
          registerUser();
        }
      }
    } catch (e) {
      print(e.toString());
      Fluttertoast.showToast(msg: e.toString());
    }
  }

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
        padding: const EdgeInsets.only(top: 160),
        child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Enter your credentials to continue",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 128, 125, 125)),
                ),
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 247, 245, 245)),
                        child: TextFormField(
                          controller: uController,
                          decoration: InputDecoration(
                              errorStyle: const TextStyle(color: Colors.black),
                              errorText:
                                  _isNotValid ? "Enter required field" : null,
                              hintText: "Username",
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 247, 245, 245)),
                        child: TextFormField(
                          controller: eController,
                          decoration: InputDecoration(
                              errorStyle: const TextStyle(color: Colors.black),
                              errorBorder: InputBorder.none,
                              errorText:
                                  _isNotValid ? "Enter required field" : null,
                              hintText: "Email",
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.only(
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
                          obscureText: true,
                          decoration: InputDecoration(
                              errorStyle: const TextStyle(color: Colors.black),
                              errorText:
                                  _isNotValid ? "Enter required field" : null,
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
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 247, 245, 245)),
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        validateUserEmail();
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      child: Text(
                        "REGISTER",
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
                    Text("Already Have an Account ?",
                        style: theme().textTheme.headline3?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.normal)),
                    TextButton(
                        onPressed: () {
                          Get.to(() => (const Login()));
                        },
                        child: Text("Log in",
                            style: theme()
                                .textTheme
                                .headline3
                                ?.copyWith(color: Colors.green)))
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
