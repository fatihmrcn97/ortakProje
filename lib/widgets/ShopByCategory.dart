// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ShopByCategoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 30, bottom: 1),
            child: Text(
              'kategoriye göre alışveriş',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.all(20),
              height: 800,
              width: 600,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _categorContainer(
                          'https://ak.picdn.net/shutterstock/videos/1023627325/thumb/8.jpg',
                          'Offers'),
                      _categorContainer(
                          'https://blog-images.pharmeasy.in/2021/01/08134907/products-for-covid--810x540.jpg',
                          'Covid Essentials'),
                      _categorContainer(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR4iEOz3f7jt_bVBtZabHZx1ZlnA44AuJdUg&usqp=CAU',
                          'Baby Care'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _categorContainer(
                          'https://media.istockphoto.com/photos/young-man-with-moisturizer-on-the-face-picture-id492775078?k=20&m=492775078&s=612x612&w=0&h=xAuxQhewBo6pdSDqAsGjDANTvGp0V1UUXbRfPQtLMVI=',
                          'Men Care'),
                      _categorContainer(
                          'https://pyxis.nymag.com/v1/imgs/957/9ae/68c6924a91715c39dc55ffcd8cb9348e4b-soap-lede.rsocial.w1200.jpg',
                          'Bath & Soap'),
                      _categorContainer(
                          'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/242321_2200-1200x628.jpg',
                          'Oral Care'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _categorContainer(
                          'https://www.medgadget.com/wp-content/uploads/2019/12/Sexual-Wellness-Market.jpg',
                          'Sexual wellness'),
                      _categorContainer(
                          'https://i0.wp.com/post.healthline.com/wp-content/uploads/2021/03/pills-vitamins-pill-1296x728-header.jpg?w=1155&h=1528',
                          'supplements'),
                      _categorContainer(
                          'https://upload.echemi.com/2017/0411/1491903931201.jpg',
                          'Personal Care'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _categorContainer(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbjzl5U3TXsPM3mzl3OtILS1nYiNZDkkacV2jgPUKk7dmiaV0v2UjX5_I0KAmQc7rAr5E&usqp=CAU',
                          'Devices'),
                      _categorContainer(
                          'https://static.onecms.io/wp-content/uploads/sites/14/2020/08/20/makeup-header-2000.jpg',
                          'MakeUp'),
                      _categorContainer(
                          'https://www.skincenterofsouthmiami.com/wp-content/uploads/2018/06/Skin-Center-of-South-Miami-Facials-and-Skin-Care.jpg',
                          'Skin care'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _categorContainer(
                          'https://florida-academy.edu/wp-content/uploads/2021/02/hair-maintenance-maintainstyle-floridaacademy-1500x1000.jpg',
                          'Hair Care'),
                      _categorContainer(
                          'https://media.istockphoto.com/photos/woman-hands-protecting-female-sign-picture-id1277507466?k=20&m=1277507466&s=612x612&w=0&h=uGz1WuZ7QFXLAqwmNsfJK7AHckP6PADA4ne2xoCBCgQ=',
                          'Female Care'),
                      _categorContainer(
                          'https://health.arlingtonva.us/wp-content/uploads/sites/25/2014/01/maternity-care.jpg',
                          'Maternity Care'),
                    ],
                  ),
                ],
              )),
        ]);
  }
}

Widget _categorContainer(String imgUrl, String title) {
  return GestureDetector(
    onTap: () {
      print(title);
    },
    child: Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(children: <Widget>[
        Card(
          elevation: 3,
          child: Container(
              width: 106.0,
              height: 90.0,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(3),
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(imgUrl)))),
        ),
        Text(
          title,
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        )
      ]),
    ),
  );
}
