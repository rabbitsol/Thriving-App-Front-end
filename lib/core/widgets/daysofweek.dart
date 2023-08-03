import 'package:flutter/material.dart';

Widget daysOfWeek(BuildContext context, String day) {
  return Padding(
    padding: const EdgeInsets.only(right: 6.0),
    child: Row(children: [
      const Padding(
        padding: EdgeInsets.only(top: 3.0),
        child: Icon(
          Icons.check_box,
          color: Color.fromARGB(255, 29, 29, 29),
          size: 15,
        ),
      ),
      const SizedBox(width: 3),
      Text(day,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: 22, color: const Color.fromARGB(255, 29, 29, 29)))
    ]),
  );
}
