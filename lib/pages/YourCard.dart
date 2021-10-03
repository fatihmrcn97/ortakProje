import 'package:flutter/material.dart';

class YourCard extends StatefulWidget {
  const YourCard({Key? key}) : super(key: key);

  @override
  _YourCardState createState() => _YourCardState();
}

class _YourCardState extends State<YourCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text(
          "Your Card",
          textAlign: TextAlign.center,
        ),
        automaticallyImplyLeading: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            _container("assets/elkrem.jpg"),
            SizedBox(
              height: 10,
            ),
            _container("assets/elkrem2.jpeg"),
          ],
        ),
      ),
    );
  }
}

Widget _container(String imageUrl) {
  return Container(
    color: Colors.white,
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                    image: AssetImage(
                      imageUrl,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 10),
                  child: Text("El nemlendirici özel krem"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 3.0),
                  child: Text("Nivea-Soft"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 10),
                  child: Text(
                    "249.99 TL",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue[600]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 5.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_box,
                        size: 16,
                        color: Colors.green[400],
                      ),
                      Text(
                        " Delivery in 1 hour.",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 12.0, top: 15.0),
                        child: Container(
                          width: 25,
                          height: 25,
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: Icon(Icons.remove),
                            backgroundColor: Colors.orange,
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, top: 15.0),
                      child: Text(
                        "0",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 12.0, top: 15.0),
                        child: Container(
                          width: 25,
                          height: 25,
                          child: FloatingActionButton(
                            backgroundColor: Colors.orange,
                            onPressed: () {},
                            child: Icon(
                              Icons.add,
                            ),
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
