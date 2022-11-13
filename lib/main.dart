import 'package:flutter/material.dart';
import 'package:arxiv_reader/pages/paper.dart';
import 'package:arxiv_reader/pages/home.dart';
import 'package:arxiv_reader/pages/subcategory.dart';

void main() => runApp(ArxivReader());

class ArxivReader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/paper",
      routes: {
        "/": (context) => Home(),
        '/subcat': (context) => Subcategory(),
        "/paper": ((context) => Paper())
      },
    );
  }
}
