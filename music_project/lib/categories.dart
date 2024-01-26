import 'package:flutter/material.dart';
import 'package:music_project/artistesPage.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  List<bool> selectedCategories = [false, false, false, false]; // Ajouter autant d'éléments que nécessaire

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
                          'Choisissez',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          ' 5 catégories',
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
                  buildSelectableCategory(0, 'Afro', 'assets/image2.jpeg'),
                  buildSelectableCategory(1, 'Gospel', 'assets/image3.jpeg'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildSelectableCategory(2, 'HipHop', 'assets/image1.jpeg'),
                  buildSelectableCategory(3, 'Party', 'assets/image2.jpeg'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildSelectableCategory(0, 'Afro', 'assets/image2.jpeg'),
                  buildSelectableCategory(1, 'Gospel', 'assets/image3.jpeg'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildSelectableCategory(2, 'HipHop', 'assets/image1.jpeg'),
                  buildSelectableCategory(3, 'Party', 'assets/image2.jpeg'),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 90, right: 90, top: 30),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Faire quelque chose avec les catégories sélectionnées
                      // List<String> selectedCategoriesList = [];
                      // for (int i = 0; i < selectedCategories.length; i++) {
                      //   if (selectedCategories[i]) {
                      //     selectedCategoriesList.add(getCategoryName(i));
                      //   }
                      // }
                      // print('Catégories sélectionnées : $selectedCategoriesList');
                      Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ArtistesPage(),
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

  Widget buildSelectableCategory(int index, String categoryName, String imagePath) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategories[index] = !selectedCategories[index];
        });
      },
      child: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Container(
                  child: Image.asset(
                    imagePath,
                    height: 150,
                    width: 150,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  categoryName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            if (selectedCategories[index])
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

  String getCategoryName(int index) {
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
    home: CategoriesPage(),
  ));
}
