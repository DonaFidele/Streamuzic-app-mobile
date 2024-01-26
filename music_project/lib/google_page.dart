import 'package:flutter/material.dart';

class GooglePage extends StatefulWidget {
  const GooglePage({Key? key}) : super(key: key);

  @override
  State<GooglePage> createState() => _GooglePageState();
}

class _GooglePageState extends State<GooglePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Fond noir pour le Scaffold
      body: Center(
        child: Container(
          height: 700, // Hauteur de 600
          width: 400, // Largeur de 300
          decoration: BoxDecoration(
            color: Colors.white, // Fond blanc pour le Container
            borderRadius: BorderRadius.circular(8), // BorderRadius noir
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/logoG.png',
                      height: 60, // Hauteur de 120
                      width: 60, // Largeur de 120
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 0, right: 55),
                      child: Center(
                        child: Text(
                          'Se connecter avec Google',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 700.0, // Largeur de la barre
                height: 1.0, // Hauteur de la barre
                color: Colors.black, // Couleur de la barre
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  'assets/logo.png',
                  height: 50, // Hauteur de 120
                  width: 50, // Largeur de 120
                ),
              ),
              SizedBox(height: 5),
              Column(
                children: [
                  Container(
                    child: Center(
                      child: Text(
                        'Choisissez un compte',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30, // Augmentation de la taille
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        'pour accéder à l\'application',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20, // Augmentation de la taille
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          'Email',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Entrez votre email',
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          'Mot de passe',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Entrez votre mot de passe',
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
