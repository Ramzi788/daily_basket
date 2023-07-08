import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  const Products(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imagePath});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromARGB(255, 202, 202, 202), width: 0.5),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        width: screenSize.width / 2.2,
        height: 230,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset(
                    widget.imagePath,
                    height: 100,
                  ),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Text(
                widget.itemName,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      widget.itemPrice,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 123, 120, 120)),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 21.5, horizontal: 20),
                        decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12))),
                        child: const Icon(
                          Icons.add,
                          size: 20,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
