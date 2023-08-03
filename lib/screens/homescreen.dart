import 'package:flutter/material.dart';
import 'package:thrivingapp/core/model/appstrings.dart';
import 'package:thrivingapp/screens/playscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool value1 = false;
  bool value2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: const [
              Text(AppStrings.datetime),
            ],
          ),
        ),
        const SizedBox(height: 80),
        chktile(Checkbox(
          // checkColor:,
          fillColor: MaterialStateColor.resolveWith((states) => Colors.black54),
          value: value1,
          onChanged: (bool? value) {
            setState(() {
              value1 = !value1;
            });
          },
        )),
        const SizedBox(height: 10),
        chktile(Checkbox(
          value: value2,
          onChanged: (bool? value) {
            setState(() {
              value2 = !value2;
            });
          },
        ))
      ],
    );
  }

  Widget chktile(Widget checkbox) {
    // return
    // ListTile(leading: Icon(Icons.play_arrow));

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 15.0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Container(
          //   // margin: EdgeInsets.all(0),
          //   color: Colors.amber,
          //   // padding: EdgeInsets.all(0),
          //   width: 70,
          //   child:
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const PlayScreen()));
            },
            child:
                // padding: EdgeInsets.all(0),
                // // alignment: Alignment.topLeft,
                // onPressed: () {},
                // icon:
                // Icon(
                const Icon(
              Icons.play_arrow,
              size: 70,
              color: Colors.black54,
            ),
          ),
          // ),
          // ),
          // const SizedBox(width: 10),
          Text(
            'Routine',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.24),
          // Container(
          //   color: Colors.green,
          // child:
          Row(children: [
            // Container(
            //   color: Colors.amber,
            //   child:
            Text(
              AppStrings.hdur,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(width: 25, height: 25, child: checkbox),
          ]),
          // )
        ],
      ),
    );
  }
}
