import 'package:mbanking_ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        //primaryColor: Color.fromARGB(237, 109, 25, 219),
        scaffoldBackgroundColor: Color.fromARGB(0, 80, 47, 199),
      ),
      home: MainPage(),
    );
  }
}