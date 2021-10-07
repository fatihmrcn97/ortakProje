// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ShopByBrand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 15, bottom: 1,top: 20),
            child: Text(
              'markaya göre alışveriş',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.all(3),
              height: 350,
              width: 600,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      _BrandContainer(
                          'https://cdn-a.william-reed.com/var/wrbm_gb_food_pharma/storage/images/3/4/9/5/505943-1-eng-GB/Unilever-relaunches-Lux-soap-into-Nigerian-market_wrbm_large.png'),
                      _BrandContainer(
                          'https://mms.businesswire.com/media/20201020005972/en/831815/5/Oral_B_1.jpg'),
                      _BrandContainer(
                          'https://www.10wallpaper.com/wallpaper/1366x768/1307/PANTENE-Brand_HD_Wallpapers_1366x768.jpg')
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      _BrandContainer(
                          'https://www.farmaciadellacondotta.it/images/feature_variant/44/vichy.jpg'),
                      _BrandContainer(
                          'https://vectorlogoseek.com/wp-content/uploads/2018/12/loreoal-paris-vector-logo.png'),
                      _BrandContainer(
                          'http://angiesangelhelpnetwork.com/wp-content/uploads/2012/08/imagesaxe.jpg')
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      _BrandContainer(
                          'https://m.eyeofriyadh.com/news_images/2016/09/2b4af63550cd8.png'),
                      _BrandContainer(
                          'https://1000logos.net/wp-content/uploads/2020/04/Nivea-Logo-2004.jpg'),
                      _BrandContainer(
                          'https://logowik.com/content/uploads/images/739_pampers.jpg')
                    ],
                  ),
                ],
              )),
        ]);
  }
}

// ignore: unused_element
Widget _BrandContainer(String imgUrl) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(children: <Widget>[
        Card(
          elevation: 5,
          child: Container(
              width: 120.0,
              height: 90.0,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(3),
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(imgUrl)))),
        ),
      ]),
    ),
  );
}
