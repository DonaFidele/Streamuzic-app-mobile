import 'package:flutter/material.dart';
import 'package:music_project/connexion.dart';
import 'package:music_project/form.dart';

class Inscription extends StatefulWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image5.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/logo.png',
                          height: 250,
                          width: 250,
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            child: Center(
                              child: Text(
                                'Découvrez toutes vos musiques',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                child: Center(
                                  child: Text(
                                    'Ecoutez de la musique partout et en tout le',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ),
                              ),
                              Container(
                                child: Center(
                                  child: Text(
                                    'temps avec vos proches',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black,
              // ... reste du code
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                                    Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FormulaireInscription(),
              ),
            );
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                        fixedSize:
                            MaterialStateProperty.all<Size>(Size(400.0, 60.0)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                        ),
                      ),
                      child: Text(
                        'S\'inscrire',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Container(
                          width: 170.0,
                          height: 1.0,
                          color: Colors.red,
                        ),
                      ),
                      Container(
                        child: Text(
                          'ou',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                      ),
                      Container(
                        child: Container(
                          width: 170.0,
                          height: 1.0,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                       Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 50, 
              height: 50, 
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
            ),
            Image.asset(
              'assets/logo.png', 
              width: 30,
              height: 30,
            ),
          ],
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 50, 
              height: 50, 
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
            ),
            Image.asset(
              'assets/logo.png', 
              width: 30,
              height: 30,
            ),
          ],
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 50, 
              height: 50, 
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
            ),
            Image.asset(
              'assets/logo.png', 
              width: 30,
              height: 30,
            ),
          ],
        ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          'Déjà un compte? ',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
 MouseRegion(
  cursor: SystemMouseCursors.click,
  child: GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ConnexionPage(), 
        ),
      );
    },
    child: Container(
      child: Text(
        ' Connectez-vous.',
        style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
      ),
    ),
  ),
)
                    ],
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

void main() {
  runApp(MaterialApp(
    home: Inscription(),
  ));
}
