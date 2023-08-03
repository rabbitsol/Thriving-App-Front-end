import 'package:flutter/material.dart';

import '../model/appstrings.dart';

Widget appBar(BuildContext context) {
  return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 45,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title:
          // Container(
          //   color: Colors.amber,
          //   child:
          Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 15.0),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Text(
                    AppStrings.apptitle,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 1.5),
                    child: CircleAvatar(
                      radius: 2.2,
                      backgroundColor: Colors.red,
                    ),
                  )
                ],
              )
              // child:
              ),
      // ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.calendar_today_rounded),
                alignment: const Alignment(9, 0.0),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.spa),
                  alignment: const Alignment(6, 0)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.star_outlined),
                  alignment: const Alignment(3, 0)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings_outlined),
                  alignment: const Alignment(0, 0))
            ],
          ),
        )
      ]);
}
