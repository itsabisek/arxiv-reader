import 'package:http/http.dart';
import 'package:webfeed/webfeed.dart';
import 'package:intl/intl.dart';

class PaperService {
  List<Paper> papers = [];
  bool lastFetchSuccessfull = true;

  Future<void> getPapers(String code, String searchQuery) async {
    papers = [];
    String search = searchQuery.isNotEmpty ? "+AND+all:$searchQuery" : "";
    Response response = await get(Uri.parse(
        "https://export.arxiv.org/api/query?search_query=cat:$code$search&sortBy=lastUpdatedDate&sortOrder=descending&max_results=20"));
    AtomFeed data = AtomFeed.parse(response.body);
    for (AtomItem entry in data.items!) {
      try {
        String title = entry.title!.trim().replaceAll("  ", "");
        List<AtomPerson> authorsList = entry.authors!;
        String summary = (entry.summary!).trim().replaceAll("  ", "");
        List<AtomLink> linksList = entry.links!;
        String publishedOn =
            DateFormat.yMMMd().format(DateTime.parse(entry.published!));

        String authors = "";
        int totalAuthors = authorsList.length;
        if (totalAuthors == 1) {
          authors = authorsList[0].name!;
        } else {
          authors = "${authorsList[0].name!} et al.";
        }

        String pdfUrl = "";
        for (AtomLink link in linksList) {
          if (link.title == "pdf") {
            pdfUrl = link.href!;
          }
        }
        if (pdfUrl.isEmpty) {
          print("No URL found. Skipping $title");
          continue;
        }

        papers.add(Paper(
            title: title,
            author: authors,
            summary: summary,
            pdfUrl: pdfUrl,
            publishedOn: publishedOn));
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
  late String title;
  late String summary;
  late String author;
  late String pdfUrl;
  late String publishedOn;

  Paper(
      {required this.title,
      required this.summary,
      required this.author,
      required this.pdfUrl,
      required this.publishedOn});
}
