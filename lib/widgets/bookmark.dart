import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Bookmark extends StatelessWidget {
  const Bookmark({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(title),
      ),
    );
  }
}
