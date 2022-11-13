import 'package:http/http.dart';
import 'package:webfeed/webfeed.dart';

class PaperService {
  List<Paper> papers = [];
  bool lastFetchSuccessfull = true;

  Future<void> getPapers(String code, String searchQuery) async {
    papers = [];
    String search = searchQuery.isNotEmpty ? "+AND+all:$searchQuery" : "";
    Response response = await get(Uri.parse(
        "https://export.arxiv.org/api/query?search_query=cat:$code$search&sortBy=lastUpdatedDate&sortOrder=descending"));
    AtomFeed data = AtomFeed.parse(response.body);
    for (AtomItem entry in data.items!) {
      try {
        String title = entry.title as String;
        List<AtomPerson> authorsList = entry.authors as List<AtomPerson>;
        String summary = entry.summary as String;
        List<AtomLink> linksList = entry.links as List<AtomLink>;

        String authors = authorsList
            .map((author) => author.name as String)
            .toList()
            .join(", ");

        String pdfUrl = "";
        for (AtomLink link in linksList) {
          if (link.title == "pdf") {
            pdfUrl = link.href as String;
          }
        }
        if (pdfUrl.isEmpty) {
          print("No URL found. Skipping $title");
          continue;
        }

        papers.add(Paper(
            title: title, author: authors, summary: summary, pdfUrl: pdfUrl));
        lastFetchSuccessfull = true;
      } catch (e) {
        print("Caught $e");
        lastFetchSuccessfull = false;
        continue;
      }
    }
  }
}

class Paper {
  String title;
  String summary;
  String author;
  String pdfUrl;

  Paper(
      {this.title = "Loading",
      this.summary = "Loading",
      this.author = "Loading",
      this.pdfUrl = "Loading"});
}
