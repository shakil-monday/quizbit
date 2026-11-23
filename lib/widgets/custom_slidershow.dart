import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomSlideshow extends StatelessWidget {
  final List<String> img_urls;
  const CustomSlideshow({super.key, required this.img_urls});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        // autoPlay: true,
        // enlargeCenterPage: true,
        // enlargeFactor: 0.2
        viewportFraction: 1
      ),
      items: img_urls.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(21),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(21),
                child: Image.network(item, fit: BoxFit.cover),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
