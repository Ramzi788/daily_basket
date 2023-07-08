// ignore_for_file: prefer_const_constructors

import 'package:daily_basket/Constants/themes.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 245, 245, 245),
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: theme().primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create or Sign in to Your Account",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(155, 40),
                              backgroundColor: Colors.white,
                              elevation: 0),
                          child: Text(
                            "Sign In",
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(155, 40),
                              backgroundColor: Colors.white,
                              elevation: 0),
                          child: Text(
                            "Create Account",
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Profile Details",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: InkWell(
                                onTap: () {},
                                child: Row(
                                  children: const [
                                    Icon(
                                      FontAwesomeIcons.bell,
                                      size: 15,
                                      color: Color.fromARGB(141, 0, 0, 0),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "Notifications",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: Color.fromARGB(255, 230, 229, 229),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: InkWell(
                                onTap: () {},
                                child: Row(
                                  children: const [
                                    Icon(
                                      FluentIcons.location_12_regular,
                                      size: 15,
                                      color: Color.fromARGB(141, 0, 0, 0),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "Addresses",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: Color.fromARGB(255, 230, 229, 229),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: InkWell(
                                onTap: () {},
                                child: Row(
                                  children: const [
                                    Icon(
                                      FluentIcons.history_20_regular,
                                      size: 15,
                                      color: Color.fromARGB(141, 0, 0, 0),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "Order History",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Account Details",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: InkWell(
                                onTap: () {},
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.mail_outline,
                                      size: 15,
                                      color: Color.fromARGB(141, 0, 0, 0),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "Email Address",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: const Color.fromARGB(255, 209, 209, 209),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: InkWell(
                                onTap: () {},
                                child: Row(
                                  children: const [
                                    Icon(
                                      FluentIcons.key_20_regular,
                                      size: 15,
                                      color: Color.fromARGB(141, 0, 0, 0),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "Password",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: const Color.fromARGB(255, 209, 209, 209),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: InkWell(
                                onTap: () {},
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.call_outlined,
                                      size: 15,
                                      color: Color.fromARGB(141, 0, 0, 0),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "Mobile Number",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
