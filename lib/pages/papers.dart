import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:arxiv_reader/services/paper_service.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Papers extends StatefulWidget {
  @override
  State<Papers> createState() => _PapersState();
}

class _PapersState extends State<Papers> {
  PaperService paperService = PaperService();
  String searchQuery = "";

  Future<void> getPapers(String code) async {
    try {
      print("Started");
      print(code);
      await paperService.getPapers(code, searchQuery);
      print("reached!");
    } catch (e) {
      print("caught $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    Map args = ModalRoute.of(context)?.settings.arguments as Map;
    String code = args["code"];
    String name = args["name"];

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
                  name,
                  style: TextStyle(
                      color: Colors.grey[100],
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      letterSpacing: 2.0),
                ),
                centerTitle: true,
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
                  onSubmitted: (value) {
                    if (value.isNotEmpty) {
                      setState(() {
                        searchQuery = value;
                      });
                    } else {
                      setState(() {
                        searchQuery = value;
                      });
                    }
                  },
                  onChanged: (value) {
                    if (value.isEmpty) {
                      setState(() {
                        searchQuery = value;
                      });
                    }
                  },
                ),
              ),
            ),
            setBody(code),
          ],
        ));
    // body: setBody(code));
  }

  Widget setBody(String code) {
    return SliverToBoxAdapter(
        child: FutureBuilder(
      future: getPapers(code),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Padding(
            padding: EdgeInsets.all(90),
            child: SpinKitRing(
              color: Colors.white,
              size: 50.0,
            ),
          );
        } else {
          if (!paperService.lastFetchSuccessfull) {
            return Center(
              child: TextButton(
                child: Icon(
                  Icons.refresh,
                  color: Colors.grey[500],
                ),
                onPressed: () {
                  setState(() {});
                },
              ),
            );
          } else {
            return buildList();
          }
        }
      }),
    ));
  }

  Widget buildList() {
    return ListView.builder(
        padding: EdgeInsets.only(top: 0),
        primary: false,
        shrinkWrap: true,
        itemCount: paperService.papers.length,
        itemBuilder: ((context, index) {
          return Card(
            margin: EdgeInsets.all(9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Colors.grey[900],
            // color: Colors.black12,
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Column(children: [
                Text(
                  paperService.papers[index].author,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 1.0),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/viewer", arguments: {
                      "pdfUrl": paperService.papers[index].pdfUrl
                    });
                  },
                  child: Text(
                    paperService.papers[index].title,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0),
                  ),
                )
              ]),
            ),
          );
        }));
  }
}
