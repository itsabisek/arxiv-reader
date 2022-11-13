import 'package:arxiv_reader/services/category.dart';
import 'package:flutter/material.dart';

class Subcategory extends StatelessWidget {
  final List<String> categories = [
    "Computer Science",
    "Economics",
    "Electrical Engineering and Systems Science",
    "Mathematics",
    "Physics",
    "Quantitative Biology",
    "Quantitative Finance",
    "Statistics",
  ];

  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)?.settings.arguments as Map;
    Category category = Categories.categories[data["categoryIndex"]];

    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Column(
        children: [
          Stack(alignment: Alignment.center, children: [
            Image.asset("assets/images/1.jpg"),
            Center(
              child: Text(
                category.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey[100],
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                    letterSpacing: 1.0),
              ),
            ),
          ]),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 16),
              itemCount: category.subcategories.length,
              itemBuilder: ((context, index) {
                return Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 190.0,
                  width: 190.0,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.black12,
                    child: Center(
                      child: ListTile(
                        title: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/paper", arguments: {
                              "code": category.subcategories[index].code
                            });
                          },
                          child: Text(
                            category.subcategories[index].name,
                            style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
