import 'package:character_creation_app/screens/create/create.dart';
import 'package:character_creation_app/screens/home/home.dart';
import 'package:character_creation_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: primaryTheme,
    // home: const Home(),
    home: const Create(),
  ));
}


