import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../components/arrivals_screen/content_section.dart';

class ArrivalPage extends StatelessWidget {
  const ArrivalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        systemNavigationBarColor: Colors.black,
        systemNavigationBarIconBrightness: Brightness.dark,
        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.
        statusBarIconBrightness: Brightness.light,
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color.fromARGB(255, 3, 0, 36),
            child: const ContentSection(),
          ),
        ),
      ),
    );
  }
}
