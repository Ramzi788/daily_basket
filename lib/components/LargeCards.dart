import 'package:flutter/material.dart';

class LargeCards extends StatelessWidget {
  final String title;
  final String imagePath;
  const LargeCards({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: () {},
      child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imagePath), fit: BoxFit.cover),
            border: Border.all(
                color: const Color.fromARGB(255, 202, 202, 202), width: 0.5),
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          width: screenSize.width / 1.5,
          height: 410,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
