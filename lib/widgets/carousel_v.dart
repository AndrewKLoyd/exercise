import 'package:exercise/widgets/carousel_item_v.dart';
import 'package:flutter/material.dart';

class CarouselV extends StatelessWidget {
  final List<CarouselItem> carouselItems;
  const CarouselV({super.key, required this.carouselItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView(
        //scrollDirection: Axis.horizontal,
        children: carouselItems,
      ),
    );
  }
}
