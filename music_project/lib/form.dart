import 'package:flutter/material.dart';
import 'package:music_project/categories.dart';
import 'package:music_project/inscription.dart';

class FormulaireInscription extends StatefulWidget {
  const FormulaireInscription({Key? key}) : super(key: key);

  @override
  State<FormulaireInscription> createState() => _FormulaireInscriptionState();
}

class _FormulaireInscriptionState extends State<FormulaireInscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
            child: Image.asset(
              'assets/logo.png',
              height: 30,
              width: 30,
            ),
          ),
),
                  Expanded(
                    
                    child:
                    Center(
                      child: Container(
                      
            child: Image.asset(
              'assets/logo.png',
              height: 250,
              width: 250,
            ),
          ),
                    ) ,
                  ),
                ],
              ),


          
          Center(
            child: Container(
              height: 700,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 78, 76, 76),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50, right: 50, top: 30),
                    child: Text(
                      'Username',
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
                        labelText: 'Entrez votre nom d\'utilisateur',
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
                    padding: EdgeInsets.only(left: 50, right: 50, top: 30),
                    child: Text(
                      'Confirm',
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
                        labelText: 'Confirmez votre mot de passe',
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
                    padding: EdgeInsets.only(left: 90, right: 90, top: 70),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CategoriesPage(),
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
                          'S\'inscrire',
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
