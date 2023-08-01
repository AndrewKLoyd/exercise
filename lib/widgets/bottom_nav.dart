import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        TextButton.icon(
          label: Text("Меню", style: Theme.of(context).textTheme.titleMedium),
          onPressed: () {},
          icon: const Icon(Icons.list),
        ),
        TextButton.icon(
            label: Text("Штрихкод",
                style: Theme.of(context).textTheme.titleMedium),
            onPressed: () {},
            icon: const Icon(Icons.qr_code_scanner_sharp))
      ]),
    );
  }
}
