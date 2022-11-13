import 'package:arxiv_reader/services/category.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Category> categories = Categories.categories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "arXiv Reader",
          style: TextStyle(
              fontWeight: FontWeight.w800, fontSize: 25.0, letterSpacing: 1.0),
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                clipBehavior: Clip.hardEdge,
                child: Stack(alignment: Alignment.center, children: [
                  Image.asset("assets/images/1.jpg"),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/subcat",
                            arguments: {"categoryIndex": index});
                      },
                      child: Text(
                        categories[index].name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey[100],
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                            letterSpacing: 1.0),
                      ),
                    ),
                  ),
                ]),
              ),
            );
          },
        ),
      ),
    );
  }
}
