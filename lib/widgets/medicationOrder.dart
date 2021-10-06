import 'package:flutter/material.dart';
import 'package:glass_container/glass_container.dart';

class medicationOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 30, bottom: 20),
            child: Text(
              'İlaç siparişi',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    // ignore: avoid_print
                    print('Find Medication');
                  },
                  child: GlassContainer(
                    radius: BorderRadius.circular(0),
                    shadowSpreadRadius: 0,
                    shadowBlurRadius: 5,
                    shadowColor: Colors.blue[100],
                    contHeight: 150,
                    contWidth: 150,
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.medication_rounded),
                        Text(
                          'ilaç bul',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('order with prescription');
                  },
                  child: GlassContainer(
                    radius: BorderRadius.circular(0),
                    shadowSpreadRadius: 0,
                    shadowBlurRadius: 5,
                    shadowColor: Colors.green[100],
                    contHeight: 150,
                    contWidth: 150,
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.my_library_books_rounded),
                        Icon(Icons.camera_alt),
                        Text(
                          'reçete ile sipariş',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                )
              ]),
        ]);
  }
}
