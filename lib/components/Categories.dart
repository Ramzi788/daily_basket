import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String imagePath;
  final IconData catIcon;
  final String catName;
  final Color backColor;
  const Categories({
    super.key,
    required this.imagePath,
    required this.catIcon,
    required this.catName,
    required this.backColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imagePath),
                      fit: BoxFit.cover,
                      opacity: 0.2),
                  borderRadius: BorderRadius.circular(20),
                  color: backColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    )
                  ]),
              width: MediaQuery.of(context).size.width / 3.3,
              height: 120,
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    catIcon,
                    color: Colors.white,
                    size: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      catName,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              )),
            ),
          ],
        ),
      ],
    );
  }
}
