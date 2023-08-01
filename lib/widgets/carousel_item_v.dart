import 'package:exercise/model/carousel_item_m.dart';
import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  final CarouselItemM carouselItem;
  const CarouselItem({super.key, required this.carouselItem});

  @override
  Widget build(BuildContext context) {
    return Card(
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
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Text(
                        carouselItem.content,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Text(
                          carouselItem.oldSideText,
                          style: const TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          carouselItem.sideText,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ))
                  ],
                ),
              ],
            )));
  }
}
