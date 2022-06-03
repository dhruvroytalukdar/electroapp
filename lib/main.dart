import 'package:electroapp/screens/arrival_screen.dart';
import 'package:electroapp/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Source Sans Pro",
      ),
      routes: {
        '/home': (_) => const HomePage(),
        '/arrivals': (_) => const ArrivalPage(),
      },
      initialRoute: '/home',
    );
  }
}
