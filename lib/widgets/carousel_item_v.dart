import 'package:exercise/model/carousel_item_m.dart';
import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  final CarouselItemM carouselItem;
  const CarouselItem({super.key, required this.carouselItem});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: carouselItem.image,
                  fit: BoxFit.cover,
                  colorFilter: const ColorFilter.mode(
                      Color.fromARGB(170, 0, 0, 0), BlendMode.darken)),
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  carouselItem.title,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        carouselItem.content,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Text(
                          carouselItem.oldSideText,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: Colors.white,
                                  decoration: TextDecoration.lineThrough),
                        ),
                        Text(
                          carouselItem.sideText,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(color: Colors.white),
                        ),
                      ],
                    ))
                  ],
                ),
              ],
            )));
  }
}
