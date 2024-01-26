import 'package:flutter/material.dart';
import 'package:music_project/helloPage.dart';
import 'package:music_project/inscription.dart';

class ConnexionPage extends StatefulWidget {
  const ConnexionPage({super.key});

  @override
  State<ConnexionPage> createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<ConnexionPage> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

                        Row(
                children: [
                  InkWell(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Inscription(), 
      ),
    );
  },
  child: Container(
    padding: EdgeInsets.all(10),
    child: Image.asset(
      'assets/logo.png',
      height: 60,
      width: 60,
    ),
  ),
),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 0, right: 50,top: 0),
                      child: Center(
                        child: Text(
                          'Connexion',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

Center(
child:              Row(
                
                children: [
                              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    // padding: EdgeInsets.only(left: 10, right: 10,top: 0),
                    child: Image.asset(
                      'assets/image2.jpeg',
                      height: 200, // Hauteur de 120
                      width: 200, // Largeur de 120
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    // padding: EdgeInsets.only(left: 10, right: 10,top: 0),
                    child: Image.asset(
                      'assets/image1.jpeg',
                      height: 150, // Hauteur de 120
                      width: 150, // Largeur de 120
                    ),
                  ),
                  
                ],
              ),

Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    // padding: EdgeInsets.only(left: 10, right: 10,top: 0),
                    child: Image.asset(
                      'assets/image4.jpeg',
                      height: 150, // Hauteur de 120
                      width: 150, // Largeur de 120
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    // padding: EdgeInsets.only(left: 10, right: 10,top: 0),
                    child: Image.asset(
                      'assets/image3.jpeg',
                      height: 350, // Hauteur de 120
                      width: 200, // Largeur de 120
                    ),
                  ),
                  
                ],
              ),
                ],

              ),
),



          Center(
            child: Container(
             
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Padding(
                    padding: EdgeInsets.only(left: 50, right: 50, top: 30),
                    child: Text(
                      'Email',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60, right: 50),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Entrez votre email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      cursorColor: Colors.black, // Couleur du curseur
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50, right: 50, top: 30),
                    child: Text(
                      'Password',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60, right: 50),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Entrez votre mot de passe',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      cursorColor: Colors.black, // Couleur du curseur
                    ),
                  ),
                 
                  Padding(
                    padding: EdgeInsets.only(left: 90, right: 90, top: 30),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HelloPage(),
              ),
            );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                          fixedSize:
                              MaterialStateProperty.all<Size>(Size(300.0, 50.0)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                        child: Text(
                          'Se connecter',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
