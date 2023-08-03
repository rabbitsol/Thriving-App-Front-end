import 'package:flutter/material.dart';
import 'package:thrivingapp/core/widgets/appbar.dart';
import 'package:thrivingapp/screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          textTheme: const TextTheme(bodyText1: TextStyle(fontSize: 12)),
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white, foregroundColor: Colors.black45)),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 70),
            child: appBar(context)),
        body: const HomeScreen());
  }
}
