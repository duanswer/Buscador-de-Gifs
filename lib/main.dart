import 'dart:io';

import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

import 'package:buscador_giphy/ui/home_page.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    if (kReleaseMode) exit(1);
  };
  runApp(MaterialApp(
      home: HomePage(),
      theme: ThemeData(
          hintColor: Colors.white,
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            hintStyle: TextStyle(color: Colors.white),
          ))));
}
