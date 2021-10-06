import 'package:flutter/material.dart';
import 'package:gelistirmeproje/pages/YourCard.dart';
import 'package:gelistirmeproje/widgets/ShopByCategory.dart';
import 'package:gelistirmeproje/widgets/medicationOrder.dart';
import '../widgets/imageSlider.dart';

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
        title: Text(
          "E-Eczane",
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(top: 5, bottom: 2),
            child: SizedBox(
              child: OutlinedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => YourCard()),
                  );
                },
                child: Icon(Icons.shopping_cart),
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.blue,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.zero,
                      filled: true,
                      fillColor: Colors.white),
                ))),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ImageSlider(),
            SizedBox(
              height: 20,
            ),
            medicationOrder(),
            SizedBox(
              height: 30,
            ),
            ShopByCategoryWidget(),
          ],
        ),
      ),
    );
  }
}
