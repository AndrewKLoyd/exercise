import 'package:flutter/material.dart';

/// Title with icon that shadows its background a litle bit
class ShadowedTitle extends StatelessWidget {
  const ShadowedTitle(
      {super.key, this.icon, required this.bgColor, required this.text});
  final Color bgColor;

  final Icon? icon;
  final Text text;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: bgColor,
        ),
        child: Row(
          children: [
            icon ?? SizedBox(),
            const SizedBox(
              width: 10,
            ),
            text,
            const SizedBox(
              width: 10,
            ),
          ],
        ));
  }
}
