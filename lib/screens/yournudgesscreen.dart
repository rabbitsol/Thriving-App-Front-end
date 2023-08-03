import 'package:flutter/material.dart';
import 'package:thrivingapp/core/widgets/appbar.dart';

import '../core/model/appstrings.dart';

class YourNudgesScreen extends StatefulWidget {
  const YourNudgesScreen({super.key});

  @override
  State<YourNudgesScreen> createState() => _YourNudgesScreenState();
}

class _YourNudgesScreenState extends State<YourNudgesScreen> {
  String dropdownvalue1 = 'Write In...';
  String dropdownvalue2 = 'Write In...';
  String dropdownvalue3 = 'Write In...';
  String dropdownvalue4 = 'Write In...';

  bool chkvalue1 = false;
  bool chkvalue2 = false;
  bool chkvalue3 = false;
  bool chkvalue4 = false;
  double? height1 = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 30),
          child: appBar(context)),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 50, 15, 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black54)),
                  child: Center(
                    child: Text(AppStrings.morn,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontSize: 16)),
                  ),
                ),
                const SizedBox(height: 40),
                Text("Your Nudges",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        )),
                nudges(
                  Icons.remove_red_eye_outlined,
                  "Cue",
                  DropdownButton(
                    value: dropdownvalue1,
                    style: const TextStyle(color: Colors.black54, fontSize: 13),
                    items:
                        ['Write In...', AppStrings.setup].map((String value1) {
                      return DropdownMenuItem<String>(
                        value: value1,
                        child: Text(value1),
                      );
                    }).toList(),
                    onChanged: (String? newValue1) {
                      setState(() {
                        dropdownvalue1 = newValue1!;
                      });
                    },
                  ),
                  Checkbox(
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => Colors.black54),
                    value: chkvalue1,
                    onChanged: (bool? value) {
                      setState(() {
                        chkvalue1 = !chkvalue1;
                      });
                    },
                  ),
                ),
                nudges(
                  Icons.attachment_sharp,
                  "Chain",
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                      value: dropdownvalue2,
                      style:
                          const TextStyle(color: Colors.black54, fontSize: 13),
                      items: <String>['Write In...', AppStrings.setup]
                          .map((String value2) {
                        return DropdownMenuItem<String>(
                          value: value2,
                          child: Text(value2),
                        );
                      }).toList(),
                      onChanged: (String? newValue2) {
                        setState(() {
                          dropdownvalue2 = newValue2!;
                        });
                      },
                    ),
                  ),
                  Checkbox(
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => Colors.black54),
                    value: chkvalue2,
                    onChanged: (bool? value) {
                      setState(() {
                        chkvalue2 = !chkvalue2;
                      });
                    },
                  ),
                ),
                nudges(
                  Icons.workspace_premium_outlined,
                  "Reward",
                  DropdownButton(
                    style: const TextStyle(color: Colors.black54, fontSize: 13),
                    value: dropdownvalue3,
                    items: <String>['Write In...', AppStrings.setup]
                        .map((String value3) {
                      return DropdownMenuItem<String>(
                        value: value3,
                        child: Text(value3),
                      );
                    }).toList(),
                    onChanged: (String? newValue3) {
                      setState(() {
                        dropdownvalue3 = newValue3!;
                      });
                    },
                  ),
                  Checkbox(
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => Colors.black54),
                    value: chkvalue3,
                    onChanged: (bool? value) {
                      setState(() {
                        chkvalue3 = !chkvalue3;
                      });
                    },
                  ),
                ),
                nudges(
                  Icons.beach_access_outlined,
                  "SetUp",
                  DropdownButton(
                    style: const TextStyle(color: Colors.black54, fontSize: 13),
                    value: dropdownvalue4,
                    items: <String>['Write In...', AppStrings.setup]
                        .map((String value4) {
                      return DropdownMenuItem<String>(
                        value: value4,
                        child: Text(value4),
                      );
                    }).toList(),
                    onChanged: (String? newValue4) {
                      setState(() {
                        dropdownvalue4 = newValue4!;
                      });
                    },
                  ),
                  Checkbox(
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => Colors.black54),
                    value: chkvalue4,
                    onChanged: (bool? value) {
                      setState(() {
                        chkvalue4 = !chkvalue4;
                      });
                    },
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.09),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 25.0, bottom: 35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.reply_outlined,
                  size: 50,
                  color: Colors.black54,
                )),
          ],
        ),
      ),
    );
  }

  Widget nudges(
      IconData iconData, String txt, Widget dropdown, Widget checkbox) {
    return Column(children: [
      const SizedBox(
        height: 35,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              iconData,
              size: 45,
              color: Colors.black54,
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(txt),
            const SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.67,
                    height: MediaQuery.of(context).size.height * 0.032,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black54)),
                    child: DropdownButtonHideUnderline(child: dropdown)),
                const SizedBox(
                  width: 27,
                ),
                SizedBox(width: 15, height: 15, child: checkbox),
                // checkbox
              ],
            )
          ],
        )
      ])
    ]);
  }
}


//  Column(
//             children: [
//               Icon(
//                 iconData,
//                 size: 45,
//                 color: Colors.black54,
//               ),
//               const SizedBox(
//                 width: 10,
//               ),
//             ],
//           ),
//           Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//             Text(txt),
//             const SizedBox(height: 2),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                     width: MediaQuery.of(context).size.width * 0.67,
//                     height: MediaQuery.of(context).size.height * 0.032,
//                     decoration: BoxDecoration(
//                         border: Border.all(width: 1, color: Colors.black54)),
//                     child: DropdownButtonHideUnderline(child: dropdown)),
//                 SizedBox(width: 20, height: 20, child: checkbox),
//                 // checkbox
//               ],
//             )
//           ]),
//           // const SizedBox(height: 5),
//           // SizedBox(width: 20, height: 20, child: checkbox),
//           // checkbox
//         ]),
//       ],
//     );