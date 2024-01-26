import 'package:flutter/material.dart';

class HelloPage extends StatefulWidget {
  const HelloPage({super.key});

  @override
  State<HelloPage> createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Column(
        children: [
      Container(
            child: Image.asset(
              'assets/logo.png',
              height: 250,
              width: 250,
            ),
          ),
      Row(
                children: [
                  
                  Expanded(
                    child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 150),
                  child: Center(
                    child: Row(
                      children: [
                        Text(
                          'Hello',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          ' John Doe',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/logoG.png',
                      height: 60, // Hauteur de 120
                      width: 60, // Largeur de 120
                    ),
                  ),
                ],
              ),

                 Row(
                mainAxisAlignment : MainAxisAlignment.spaceBetween,
                children: [
                  // Padding(
                    // padding: EdgeInsets.only(left: 90, right: 90, top: 70),
                    // child: Center(
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                          fixedSize:
                              MaterialStateProperty.all<Size>(Size(100.0, 5.0)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                        child: Text(
                          'Tout',
                          style: TextStyle(
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                            // fontSize: 20,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                          fixedSize:
                              MaterialStateProperty.all<Size>(Size(100.0, 5.0)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                        child: Text(
                          'Tout',
                          style: TextStyle(
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                            // fontSize: 20,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                          fixedSize:
                              MaterialStateProperty.all<Size>(Size(100.0, 5.0)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                        child: Text(
                          'Tout',
                          style: TextStyle(
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                            // fontSize: 20,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                          fixedSize:
                              MaterialStateProperty.all<Size>(Size(100.0, 5.0)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                        child: Text(
                          'Tout',
                          style: TextStyle(
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                            // fontSize: 20,
                          ),
                        ),
                      ),
                      
                      
                    // ),
                  // ),
                ],
              ),

              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                          Container(
                // padding: EdgeInsets.all(10),
                        child: Text(
                          'Tendance',
                          style: TextStyle(
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                          Container(
                // padding: EdgeInsets.all(10),
                        child: Text(
                          'Voir plus ...',
                          style: TextStyle(
                            color: Colors.red,
                            // fontWeight: FontWeight.bold,
                            // fontSize: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                        Container(
                    padding: EdgeInsets.all(10),
                    // padding: EdgeInsets.only(left: 10, right: 10,top: 0),
                    child: Image.asset(
                      'assets/image1.jpeg',
                      height: 400, // Hauteur de 120
                      width: 250, // Largeur de 120
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
                      'assets/image1.jpeg',
                      height: 100, // Hauteur de 120
                      width: 100, // Largeur de 120
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    // padding: EdgeInsets.only(left: 10, right: 10,top: 0),
                    child: Image.asset(
                      'assets/image1.jpeg',
                      height: 100, // Hauteur de 120
                      width: 100, // Largeur de 120
                    ),
                  ),

                  
                        ],
                      ),
                    ],
                  )
                ],
              )
          
        ],
       )
        
        
      
    );
  }
}