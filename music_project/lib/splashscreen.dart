import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:music_project/artistesPage.dart';
import 'package:music_project/categories.dart';
import 'package:music_project/connexion.dart';
import 'package:music_project/form.dart';
import 'package:music_project/google_page.dart';
import 'package:music_project/helloPage.dart';
import 'package:music_project/inscription.dart';


class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override

  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Inscription(),));
    });
  }


  Widget build(BuildContext context) {
        return Scaffold(
      backgroundColor: Colors.black, // Couleur de fond du splash screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png'),
            SizedBox(height: 20.0),
            SpinKitDoubleBounce(
              color: Colors.white,
              size: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}