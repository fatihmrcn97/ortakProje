import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gelistirmeproje/pages/homePage.dart';
import 'package:gelistirmeproje/pages/signUpPage.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;

  TextEditingController _emailContrller = TextEditingController();

  TextEditingController _passwordContrller = TextEditingController();

  bool circular = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white24,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Giriş Yap',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              buttonItem("Google ile devam et", "assets/google.svg", 25),
              buttonItem("Telefon ile devam et", "assets/phone.svg", 25),
              SizedBox(
                height: 10,
              ),
              Text(
                "Or",
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              textItem("Email ...", _emailContrller, false),
              SizedBox(
                height: 10,
              ),
              textItem("Şifre", _passwordContrller, true),
              SizedBox(
                height: 20,
              ),
              colorButton(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Bir hesabın yok mu? ",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (builder) => SignUpPage()),
                          (route) => false);
                    },
                    child: Text(
                      "Kayıt Ol.",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Şifreni mi Unuttun?",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buttonItem(String btnName, String imagePath, double size) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width - 60,
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(width: 2, color: Colors.blue.shade200)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              imagePath,
              height: size,
              width: size,
            ),
            SizedBox(
              width: 15,
            ),
            Text(btnName),
          ],
        ),
      ),
    );
  }

  Widget textItem(
      String labelText, TextEditingController controller, bool obscureText) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width - 70,
      child: TextFormField(
        style: TextStyle(color: Colors.black),
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(width: 1.5, color: Colors.blue)),
            labelText: labelText,
            labelStyle: TextStyle(fontSize: 17, color: Colors.grey),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(width: 2, color: Colors.blue.shade100))),
      ),
    );
  }

  Widget colorButton() {
    return InkWell(
      onTap: () async {
        setState(() {
          circular = true;
        });
        try {
          firebase_auth.UserCredential userCredential =
              await firebaseAuth.signInWithEmailAndPassword(
                  email: _emailContrller.text,
                  password: _passwordContrller.text);
          print(userCredential.user!.email);
          setState(() {
            circular = false;
          });
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (builder) => HomePage()),
              (route) => false);
        } catch (e) {
          print(e.toString());
          final snacbar = SnackBar(content: Text(e.toString()));
          ScaffoldMessenger.of(context).showSnackBar(snacbar);
          setState(() {
            circular = false;
          });
        }
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width - 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(colors: [
            Color(0xff2193b0),
            Color(0xff6dd5ed),
            Color(0xff2193b0),
          ]),
        ),
        child: Center(
          child: circular
              ? CircularProgressIndicator()
              : Text(
                  "Sign In",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
        ),
      ),
    );
  }
}
