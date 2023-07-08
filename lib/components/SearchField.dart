import 'package:daily_basket/Constants/themes.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: theme().primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: theme().primaryColorLight),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(MdiIcons.fromString('magnify')),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            hintText: "Search for items...",
                            hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 10),
            //   child: IconButton(
            //     onPressed: () {
            //       Scaffold.of(context).openEndDrawer();
            //     },
            //     icon: const Icon(
            //       Icons.filter_list,
            //       size: 30,
            //       color: Colors.white,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
