import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:arxiv_reader/services/paper_service.dart';

class Paper extends StatefulWidget {
  @override
  State<Paper> createState() => _PaperState();
}

class _PaperState extends State<Paper> {
  @override
  void initState() {
    super.initState();
    PaperService.parse();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
