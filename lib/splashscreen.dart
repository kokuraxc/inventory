import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:inventory/assets.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // redirect to overview screen
    Future.delayed(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => AssetsScreen())));

    return Material(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [
              0.0,
              0.3,
              0.7,
              1.0,
            ],
                colors: [
              Colors.green,
              Colors.blue,
              Colors.orange,
              Colors.pink
            ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Image.asset('images/artclogo.png'),
              ),
              Text(
                "SMBA-Inventory",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SpinKitRipple(color: Colors.yellow),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
