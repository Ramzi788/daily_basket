import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartItems extends StatefulWidget {
  const CartItems({super.key});

  @override
  State<CartItems> createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Order Details"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              "My Cart",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const SingleChildScrollView(
            child: Column(
              children: [],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              "Payment Method",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 10, right: 100),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20)),
              child: InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text(
                    "Cash",
                    style: TextStyle(fontSize: 18),
                  ),
                  leading: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      FontAwesomeIcons.moneyBill,
                      color: Colors.green,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
