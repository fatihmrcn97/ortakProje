import 'package:flutter/material.dart';
import 'package:gelistirmeproje/pages/YourCard.dart';
import 'package:gelistirmeproje/widgets/shopByCategory.dart';
import 'package:gelistirmeproje/widgets/medicationOrder.dart';
import 'package:gelistirmeproje/widgets/shopByBrand.dart';
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
            ShopByBrand(),
          ],
        ),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
    );
  }
}

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color(
            0xff33ccff,
          ),
          Color(0xff0099ff),
        ],
      )),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png")),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "Fatih Mercan",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "A RH (-)",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.person,
              color: Colors.black,
            ),
            title: Text("Profil"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            title: Text("Sepetim"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.assessment,
              color: Colors.black,
            ),
            title: Text("Önceki Alışverişlerim"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            title: Text("Ayarlar"),
          ),
        ],
      ),
    );
  }
}
