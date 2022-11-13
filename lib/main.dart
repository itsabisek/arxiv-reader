import 'package:flutter/material.dart';
import 'package:arxiv_reader/pages/papers.dart';
import 'package:arxiv_reader/pages/home.dart';
import 'package:arxiv_reader/pages/subcategory.dart';
import 'package:arxiv_reader/pages/viewer.dart';

void main() => runApp(ArxivReader());

class ArxivReader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
        '/subcat': (context) => Subcategory(),
        "/paper": ((context) => Papers()),
        "/viewer": ((context) => Viewer())
      },
    );
  }
}
