import 'package:exercise/styles/font.dart';
import 'package:exercise/view/home_V.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: const HomeV(),
      theme: ThemeData(textTheme: textTheme),
    ),
  );
}
