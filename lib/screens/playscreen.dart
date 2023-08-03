import 'package:flutter/material.dart';
import 'package:thrivingapp/core/widgets/appbar.dart';
import 'package:thrivingapp/screens/morningroutinescreen.dart';
import 'package:thrivingapp/screens/yournudgesscreen.dart';

import '../core/model/appstrings.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 30),
          child: appBar(context)),
      body: SingleChildScrollView(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(AppStrings.datetime)),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  btn(AppStrings.morn, context),
                  Row(children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  const MorningRoutineScreen()));
                        },
                        child: const Icon(
                          Icons.edit_note_outlined,
                          size: 32,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        AppStrings.editRo,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontSize: 12),
                      ),
                    )
                  ]),
                ]),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(Icons.notifications_none),
                    Text("  HH:MM (Start Time)")
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                Row(
                  children: const [
                    Icon(Icons.access_time),
                    Text("  HH:MM:SS (Duration)")
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const YourNudgesScreen()));
              },
              child: btn("Nudges", context)),
          const SizedBox(height: 25),
          chktile(
              Checkbox(
                // checkColor:,
                fillColor:
                    MaterialStateColor.resolveWith((states) => Colors.black54),
                value: value1,
                onChanged: (bool? value) {
                  setState(() {
                    value1 = !value1;
                  });
                },
              ),
              context),
          const SizedBox(height: 10),
          chktile(
              Checkbox(
                // checkColor:,
                fillColor:
                    MaterialStateColor.resolveWith((states) => Colors.black54),
                value: value2,
                onChanged: (bool? value) {
                  setState(() {
                    value2 = !value2;
                  });
                },
              ),
              context),
          const SizedBox(height: 10),
          chktile(
              Checkbox(
                // checkColor:,
                fillColor:
                    MaterialStateColor.resolveWith((states) => Colors.black54),
                value: value3,
                onChanged: (bool? value) {
                  setState(() {
                    value3 = !value3;
                  });
                },
              ),
              context),
          const SizedBox(height: 10),
          chktile(
              Checkbox(
                // checkColor:,
                fillColor:
                    MaterialStateColor.resolveWith((states) => Colors.black54),
                value: value4,
                onChanged: (bool? value) {
                  setState(() {
                    value4 = !value4;
                  });
                },
              ),
              context),
          SizedBox(height: MediaQuery.of(context).size.height * 0.11),
          // Padding(
          //   padding: const EdgeInsets.only(right: 15.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     children: [
          //       IconButton(
          //           onPressed: () {
          //             Navigator.of(context).pop();
          //           },
          //           icon: const Icon(
          //             Icons.reply_outlined,
          //             size: 50,
          //             color: Colors.black54,
          //           )),
          //     ],
          //   ),
          // )
        ]),
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

  Widget btn(String btntxt, BuildContext context) {
    return SizedBox(
      child: Container(
          width: MediaQuery.of(context).size.width / 1.7,
          height: MediaQuery.of(context).size.height * 0.041,
          decoration: BoxDecoration(border: Border.all(width: 1)),
          child: Center(
            child: Text(
              btntxt,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Colors.black),
            ),
          )),
    );
  }

  Widget chktile(Widget checkbox, BuildContext context) {
    // return
    // ListTile(leading: Icon(Icons.play_arrow));

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 20.0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 55,
            // MediaQuery.of(context).size.width * 0.12,
            child: Icon(
              Icons.play_arrow,
              size: 70,
              color: Colors.black54,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            'Category',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.2),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            // Container(
            //   color: Colors.amber,
            //   child:
            Text(
              AppStrings.hdur,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(width: 25, height: 25, child: checkbox),
          ])
        ],
      ),
    );
  }
}
