import 'package:flutter/material.dart';
import 'package:thrivingapp/core/model/appstrings.dart';
import 'package:thrivingapp/core/widgets/appbar.dart';
import 'package:thrivingapp/core/widgets/daysofweek.dart';
import 'package:thrivingapp/screens/yournudgesscreen.dart';

class MorningRoutineScreen extends StatefulWidget {
  const MorningRoutineScreen({super.key});

  @override
  State<MorningRoutineScreen> createState() => _MorningRoutineScreenState();
}

class _MorningRoutineScreenState extends State<MorningRoutineScreen> {
  String dropdownvalue1 = 'Write In...';
  String dropdownvalue2 = 'Write In...';
  String dropdownvalue3 = 'Write In...';
  String dropdownvalue4 = 'Write In...';
  String dropdownvalue5 = 'Breathing';
  String dropdownvalue6 = 'Visualization';

  double? height1 = 87;
  var items1 = ['Breathing', 'Visualization'];

  // var items2 = ['Breathing', 'Visualization'];
  bool chkvalue1 = false;
  bool chkvalue2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 45),
          child: appBar(context)),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 15, bottom: 15),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(right: 15),
              width: MediaQuery.of(context).size.width,
              height: height1 ?? MediaQuery.of(context).size.height * 0.125,
              decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  color: const Color.fromARGB(255, 158, 208, 231)),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(
                          Icons.delete_outline,
                          size: 30,
                        )
                      ]),
                  Text(
                    AppStrings.morn,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 17, fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(Icons.notifications_none),
                          Text(
                            AppStrings.stTime,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          const Icon(Icons.do_not_disturb_on_outlined),
                          Text(
                            AppStrings.datetime,
                            style: Theme.of(context).textTheme.bodyText1,
                          )
                        ]),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  daysOfWeek(context, "M"),
                  daysOfWeek(context, "T"),
                  daysOfWeek(context, "W"),
                  daysOfWeek(context, "Th"),
                  daysOfWeek(context, "F"),
                  daysOfWeek(context, "Sa"),
                  daysOfWeek(context, "Su"),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.check_box,
                        size: 15,
                      ),
                      const SizedBox(width: 7),
                      Text("Nudges",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold))
                    ],
                  ),
                  nudges(
                    Icons.remove_red_eye_outlined,
                    "Cue",
                    DropdownButton(
                      isExpanded: true,
                      value: dropdownvalue1,
                      style:
                          const TextStyle(color: Colors.black54, fontSize: 14),
                      items: ['Write In...', AppStrings.setup]
                          .map((String value1) {
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
                  ),
                  nudges(
                      Icons.attachment_sharp,
                      "Chain",
                      DropdownButton(
                        isExpanded: true,
                        value: dropdownvalue2,
                        style: const TextStyle(
                            color: Colors.black54, fontSize: 14),
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
                      )),
                  nudges(
                      Icons.workspace_premium_outlined,
                      "Reward",
                      DropdownButton(
                        isExpanded: true,
                        style: const TextStyle(
                            color: Colors.black54, fontSize: 14),
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
                      )),
                  nudges(
                      Icons.beach_access_outlined,
                      "SetUp",
                      DropdownButton(
                        isExpanded: true,
                        style: const TextStyle(
                            color: Colors.black54, fontSize: 14),
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
                      )),
                ],
              ),
            ),
            const SizedBox(height: 30),
            saying(
              AppStrings.breathing,
              DropdownButton(
                style: const TextStyle(fontSize: 14, color: Colors.black54),
                value: dropdownvalue5,
                items: items1.map((String items1) {
                  return DropdownMenuItem(
                    value: items1,
                    child: Text(items1),
                  );
                }).toList(),
                onChanged: (String? newValue5) {
                  setState(() {
                    dropdownvalue5 = newValue5!;
                  });
                },
              ),
              Transform.scale(
                  scale: 0.7,
                  child: Checkbox(
                    // checkColor:,
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => Colors.black54),
                    value: chkvalue1,
                    onChanged: (bool? value) {
                      setState(() {
                        chkvalue1 = !chkvalue1;
                      });
                    },
                  )),
            ),
            const SizedBox(height: 20),
            saying(
              AppStrings.visualization,
              DropdownButton(
                value: dropdownvalue6,
                style: const TextStyle(fontSize: 14, color: Colors.black54),
                items: items1.map((String items1) {
                  return DropdownMenuItem(
                    value: items1,
                    child: Text(items1),
                  );
                }).toList(),
                onChanged: (String? newValue6) {
                  setState(() {
                    dropdownvalue6 = newValue6!;
                  });
                },
              ),
              Transform.scale(
                scale: 0.7,
                child: Checkbox(
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
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.add,
                    size: 50,
                    color: Colors.black54,
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          fixedSize: Size(
                              MediaQuery.of(context).size.width * 0.26, 85)),
                      onPressed: () {},
                      child: Text("Cancel",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: Colors.black54))),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const YourNudgesScreen()));
                      },
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          fixedSize: Size(
                              MediaQuery.of(context).size.width * 0.64, 85)),
                      child: Text(
                        "Save & Complete",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: Colors.black54),
                      ))
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  Widget nudges(IconData iconData, String txt, Widget dropdown1) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(
              width: 85,
              child: Row(
                children: [
                  Icon(iconData),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(txt),
                ],
              ),
            ),
            SizedBox(
                width: 250,
                // MediaQuery.of(context).size.width * 0.32,
                child: Container(
                    // width: MediaQuery.of(context).size.width * 0.19,
                    height: MediaQuery.of(context).size.height * 0.04,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black54)),
                    child: DropdownButtonHideUnderline(
                      child: dropdown1,
                    ))),
          ]),
          const SizedBox(height: 5)
        ],
      ),
    );
  }

  Widget saying(String quote, Widget dropdown, Widget checkbox) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          const Icon(Icons.menu, size: 40, color: Colors.black54),
          const SizedBox(width: 2),
          // SizedBox(
          //   width: MediaQuery.of(context).size.width * 0.8,
          //   child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.04,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black54)),
                      child: DropdownButtonHideUnderline(child: dropdown)),
                  const SizedBox(height: 2),
                  const Text(
                    AppStrings.hdur,
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 3),
                    Column(
                      children: const [
                        Icon(Icons.add_outlined,
                            size: 30, color: Colors.black54),
                        Padding(
                          padding: EdgeInsets.only(bottom: 3.0),
                          child: Text(
                            "+/ - 5",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 13),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 2),
                    const Icon(Icons.do_not_disturb_on_outlined,
                        size: 30, color: Colors.black54),
                    const SizedBox(width: 2),
                    // Container(
                    //   color: Colors.amber,
                    //   child:
                    const Icon(Icons.delete_outline,
                        size: 30, color: Colors.black54),
                    // ),
                    // ],
                    // ),
                    // )
                    // Column(
                    //   children: const [
                    //     Icon(Icons.add_outlined, size: 30, color: Colors.black54),
                    //     Padding(
                    //       padding: EdgeInsets.only(bottom: 3.0),
                    //       child: Text(
                    //         "+/ - 5",
                    //         style: TextStyle(color: Colors.black54, fontSize: 13),
                    //       ),
                    //     )
                    //   ],
                    // ),
                    // const Icon(Icons.do_not_disturb_on_outlined,
                    //     size: 30, color: Colors.black54),
                    // // const SizedBox(width: 5),
                    // const Icon(Icons.delete_outline,
                    //     size: 30, color: Colors.black54),
                  ],
                ),
              ),
            ],
          ),
        ]),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(quote,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 14)),
        ),
        Row(
          children: [
            SizedBox(width: 15, height: 15, child: checkbox),
            const Padding(
              padding: EdgeInsets.all(2.0),
              child: Text("Benefits"),
            )
          ],
        )
      ],
    );
  }
}
