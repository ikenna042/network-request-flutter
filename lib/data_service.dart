import 'package:http/http.dart' as http;

class DataService {
  Future<String> makeRequest() async {
    final uri = Uri.https('jsonplaceholder.typicode.com', '/posts');
    http.Response response = await http.get(uri);
    print(response.body);
    return response.body;
  }
}
