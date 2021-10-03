import 'package:flutter/material.dart';
import 'package:gelistirmeproje/pages/YourCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: true,
        //leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: Text("Home Page"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (builder) => YourCard()),
                  (route) => true);
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
    );
  }
}
