import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CarouselItem {
  final String? imgSrc;
  final String? desc;
  const CarouselItem({this.imgSrc, this.desc});
}

class TestimonialCarousel extends StatelessWidget {
  final List<CarouselItem> carouselItem;
  const TestimonialCarousel({required this.carouselItem});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: 375.0,
          autoPlay: true,
          pageSnapping: true,
          viewportFraction: 0.6),
      items: carouselItem.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.blue)),
              elevation: 2,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 40, right: 40, bottom: 20, top: 30),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          i.imgSrc ?? 'assets/images/logo.png',
                          fit: BoxFit.contain,
                          width: 125,
                          height: 125,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        i.desc ?? '',
                        textAlign: TextAlign.center,
                        maxLines: 8,
                        style: TextStyle(
                            fontSize: 12,
                            color: HexColor('#5E5E5E'),
                            height: 1.8,
                            overflow: TextOverflow.ellipsis),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
