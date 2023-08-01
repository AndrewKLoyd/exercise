import 'package:flutter/material.dart';

class Bookmark extends StatelessWidget {
  const Bookmark({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Text(title, style: Theme.of(context).textTheme.titleLarge),
      ),
    );
  }
}
