import 'package:flutter/material.dart';
import 'farmer_page.dart';
import 'buyer_page.dart';
import 'transport_provider_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/farmers_page': (context) => FarmersPage(),
        '/buyers_page': (context) => BuyersPage(),
        '/transport_providers_page': (context) => TransportProviderPage(),
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
                  Navigator.pushNamed(context, '/farmers_page');
                },
              ),
              RaisedButton(
                color: Colors.blue[600],
                child: Text("Buyer", style: TextStyle(
                  color: Colors.amber[600],
                  fontSize: 20,
                )),
                onPressed: () {
                  Navigator.pushNamed(context, '/buyers_page');
                },
              ),
              RaisedButton(
                color: Colors.blue[600],
                child: Text("Transort Provider", style: TextStyle(
                  color: Colors.amber[700],
                  fontSize: 20,
                )),
                onPressed: () {
                  Navigator.pushNamed(context, '/transport_providers_page');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}