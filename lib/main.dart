import 'package:codher/brailletranslator.dart';
import 'package:flutter/material.dart';
import 'package:codher/signdictonary.dart';
import 'splashscreen.dart';
import 'voicerecognition.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
    initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/translator': (context) => BrailleTranslator(),
        '/voice': (context) => voice(),
        '/dictionary': (context) => MyGridView(),
      }
    ),
  );
}
