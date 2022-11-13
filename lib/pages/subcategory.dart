import 'package:arxiv_reader/services/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Subcategory extends StatefulWidget {
  @override
  State<Subcategory> createState() => _SubcategoryState();
}

class _SubcategoryState extends State<Subcategory> {
  List<SubCategory> filteredSubcategories = [];

  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)?.settings.arguments as Map;
    Category category = Categories.categories[data["categoryIndex"]];
    List<SubCategory> subcategories = filteredSubcategories.isEmpty
        ? category.subcategories
        : filteredSubcategories;

    return Scaffold(
        backgroundColor: Colors.grey[850],
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.grey[900],
              elevation: 0,
              expandedHeight: 150,
              floating: true,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/images/1.jpg",
                  fit: BoxFit.cover,
                ),
                title: Text(
                  category.name,
                  textAlign: TextAlign.right,
                  // overflow: TextOverflow.fade,
                  style: TextStyle(
                      color: Colors.grey[100],
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      letterSpacing: 2.0),
                ),
                centerTitle: false,
              ),
            ),
            SliverToBoxAdapter(
              child: const SizedBox(
                height: 5,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: CupertinoSearchTextField(
                  backgroundColor: Colors.grey[500],
                  borderRadius: BorderRadius.circular(10.0),
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      setState(() {
                        filteredSubcategories = category.subcategories
                            .where((e) => e.name.toLowerCase().contains(value))
                            .toList();
                      });
                    } else {
                      setState(() {
                        filteredSubcategories = [];
                      });
                    }
                  },
                ),
              ),
            ),
            buildList(subcategories)
          ],
        ));
  }

  Widget buildList(List<SubCategory> subCategories) {
    return SliverToBoxAdapter(
      child: ListView.builder(
        padding: EdgeInsets.all(0),
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 2,
        //     crossAxisSpacing: 5,
        //     childAspectRatio: 3 / 2,
        //     mainAxisSpacing: 3),
        primary: false,
        shrinkWrap: true,
        itemCount: subCategories.length,
        itemBuilder: ((context, index) {
          return Card(
            margin: EdgeInsets.all(9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Colors.grey[900],
            child: Center(
              child: ListTile(
                title: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/paper", arguments: {
                      "name": subCategories[index].name,
                      "code": subCategories[index].code
                    });
                  },
                  child: Text(
                    subCategories[index].name,
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
