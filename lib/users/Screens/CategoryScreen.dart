import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../Constants/vars.dart';
import '../../components/Categories.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Alert"),
            content: Text("Hey"),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final int numRows = (list.length / 3).ceil();
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0,
            centerTitle: true,
            title: const Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )),
        body: ListView.builder(
            itemCount: numRows,
            itemBuilder: (context, row) {
              final int startIndex = row * 3;
              final int endIndex = startIndex + 3;
              final List rowItems = list.sublist(
                  startIndex, endIndex < list.length ? endIndex : list.length);

              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  final String item = rowItems[index][0];
                  final IconData icon = rowItems[index][1];
                  final String image = rowItems[index][2];
                  final Color color = rowItems[index][3];
                  return Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      right: 5,
                      left: 5,
                    ),
                    child: InkWell(
                      onTap: () {
                        _showDialog();
                      },
                      child: Categories(
                        imagePath: image,
                        catIcon: icon,
                        catName: item,
                        backColor: color,
                      ),
                    ),
                  );
                }),
              );
            }));
  }
}
