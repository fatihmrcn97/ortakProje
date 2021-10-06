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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => YourCard()),
              );
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
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
