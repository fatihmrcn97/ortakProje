import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

// ignore: use_key_in_widget_constructors
class ImageSlider extends StatefulWidget {
  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      child: Row(children: <Widget>[
        Expanded(
          child: SizedBox(
            height: 200,
            width: 100,
            child: ListView(
              padding: EdgeInsets.all(5),
              children: <Widget>[
                ImageSlideshow(
                  width: double.infinity,
                  height: 200,
                  initialPage: 0,
                  indicatorColor: Colors.blue,
                  indicatorBackgroundColor: Colors.grey,
                  onPageChanged: (value) {
                    debugPrint('Page changed: $value');
                  },
                  autoPlayInterval: 2000,
                  isLoop: true,
                  children: [
                    Image.asset(
                      'assets/images/ad1.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/ad2.png',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/ad3.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/ad4.png',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
