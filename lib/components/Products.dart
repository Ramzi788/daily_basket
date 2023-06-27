import 'package:daily_basket/Constants/themes.dart';
import 'package:flutter/material.dart';

class BestSellers extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  const BestSellers(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: () {},
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromARGB(255, 202, 202, 202), width: 0.5),
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          width: screenSize.width / 2.1,
          height: 210,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    imagePath,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    itemName,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          itemPrice,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.normal),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            // Button click logic
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: theme().primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(200))),
                          child: const Icon(
                            Icons.add,
                            size: 20,
                          )),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
