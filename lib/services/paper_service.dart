import 'package:http/http.dart';
import 'package:webfeed/webfeed.dart';

class PaperService {
  static void parse() async {
    Response response = await get(Uri.parse(
        "https://export.arxiv.org/api/query?search_query=cat:cs.AI&sortBy=lastUpdatedDate&sortOrder=descending"));
    AtomFeed data = AtomFeed.parse(response.body);
    print(data.items?[0].summary);
  }
}
