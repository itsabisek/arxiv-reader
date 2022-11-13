import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Viewer extends StatefulWidget {
  @override
  State<Viewer> createState() => _ViewerState();
}

class _ViewerState extends State<Viewer> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Map args = ModalRoute.of(context)?.settings.arguments as Map;
    String pdfUrl = args["pdfUrl"];
    print(pdfUrl);

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey[600], toolbarHeight: 50),
      body: Padding(
        padding: const EdgeInsets.all(3.0),
        child: SfPdfViewer.network(
          pdfUrl,
          key: _pdfViewerKey,
        ),
      ),
    );
  }
}
