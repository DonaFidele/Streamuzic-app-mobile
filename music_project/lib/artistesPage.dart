import 'package:flutter/material.dart';
import 'package:music_project/helloPage.dart';

class ArtistesPage extends StatefulWidget {
  const ArtistesPage({super.key});

  @override
  State<ArtistesPage> createState() => _ArtistesPageState();
}

class _ArtistesPageState extends State<ArtistesPage> {
  List<bool> selectedArtists = [false, false, false, false]; // Ajouter autant d'éléments que nécessaire

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 150),
                  child: Center(
                    child: Row(
                      children: [
                        Text(
                          'Choisissez 5 ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'artistes',
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
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildSelectableArtist(0, 'Afro', 'assets/image2.jpeg'),
                  buildSelectableArtist(1, 'Gospel', 'assets/image3.jpeg'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildSelectableArtist(2, 'HipHop', 'assets/image1.jpeg'),
                  buildSelectableArtist(3, 'Party', 'assets/image2.jpeg'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildSelectableArtist(0, 'Afro', 'assets/image2.jpeg'),
                  buildSelectableArtist(1, 'Gospel', 'assets/image3.jpeg'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildSelectableArtist(2, 'HipHop', 'assets/image1.jpeg'),
                  buildSelectableArtist(3, 'Party', 'assets/image2.jpeg'),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 90, right: 90, top: 30),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Faire quelque chose avec les artistes sélectionnés
                      // List<String> selectedArtistsList = [];
                      // for (int i = 0; i < selectedArtists.length; i++) {
                      //   if (selectedArtists[i]) {
                      //     selectedArtistsList.add(getArtistName(i));
                      //   }
                      // }
                      // print('Artistes sélectionnés : $selectedArtistsList');
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
                      'Valider',
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
        ],
      ),
    );
  }

  Widget buildSelectableArtist(int index, String artistName, String imagePath) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedArtists[index] = !selectedArtists[index];
        });
      },
      child: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Container(
                  child: ClipOval(
                    child: Image.asset(
                      imagePath,
                      height: 150,
                      width: 150,
                    ),
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  artistName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            if (selectedArtists[index])
              Image.asset(
                'assets/white_cloud.jpg', // Ajoutez le chemin de votre image de nuage blanc
                height: 150,
                width: 150,
              ),
          ],
        ),
      ),
    );
  }

  String getArtistName(int index) {
    switch (index) {
      case 0:
        return 'Afro';
      case 1:
        return 'Gospel';
      case 2:
        return 'HipHop';
      case 3:
        return 'Party';
      default:
        return '';
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: ArtistesPage(),
  ));
}
