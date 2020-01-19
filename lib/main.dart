import 'package:flutter/material.dart';
import 'SecondPage.dart';
import 'buyer_page.dart';
import 'farmer_page.dart';
import 'transport_provider_page.dart';
import 'splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splash',
      routes: {
        '/': (context) => HomePage(),
        '/splash': (context) => SplashPage(),
        '/farmers_login_page': (context) => FarmersLoginPage(),
        '/farmers_register_page': (context) => FarmersRegisterPage(),
        '/buyers_login_page': (context) => BuyersLoginPage(),
        '/buyers_register_page': (context) => BuyersRegisterPage(),
        '/transport_providers_login_page': (context) =>
            TransportProviderLoginPage(),
        '/transport_providers_register_page': (context) =>
            TransportProviderRegisterPage(),
        '/home_page':(context) => MyHomePage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Farmers Portal"),
      ),
      body:
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bk_img.jpeg"),
                fit: BoxFit.fill
            )
        ),
        child: Center(
          child: Column(

            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 140),
                child: Text(
                  "Who are you?",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              RaisedButton(
                child: Text("Farmer", style: TextStyle(
                  color: Colors.amber[700],
                  fontSize: 20,
                )),
                color: Colors.blue[600],
                onPressed: () {
                  Navigator.pushNamed(context, '/farmers_login_page');
                },
              ),
              RaisedButton(
                color: Colors.blue[600],
                child: Text("Buyer", style: TextStyle(
                  color: Colors.amber[600],
                  fontSize: 20,
                )),
                onPressed: () {
                  Navigator.pushNamed(context, '/buyers_login_page');
                },
              ),
              RaisedButton(
                color: Colors.blue[600],
                child: Text("Transort Provider", style: TextStyle(
                  color: Colors.amber[700],
                  fontSize: 20,
                )),
                onPressed: () {
                  Navigator.pushNamed(
                      context, '/transport_providers_login_page');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}