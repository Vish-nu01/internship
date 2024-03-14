// Importing necessary packages
import 'package:http/http.dart' as http;

// HttpService class for fetching data from an API
class HttpService {
  // Define base URL and endpoint
  static const baseUrl = 'http://10.0.2.2:8000/';
  final String endpoint = 'time_choices/';

  // Method to fetch data asynchronously
  Future<void> getData() async {
    try {
      // Making HTTP GET request
      final response = await http.get(Uri.parse(baseUrl + endpoint));
     // final response1 = await http.post(url);

      // Checking response status code
      if (response.statusCode == 200) {
        // If successful (status code 200), print response body
        print(response.body);
      } else {
        // If request failed, throw an exception
        throw Exception('Failed to get data from API');
      }
    } catch (e) {
      // Catching any errors that occur during the request
      print('Error: $e');
      // You might want to handle this error further or log it.
    }
  }
}

void main() {
  // Creating an instance of HttpService
  final httpService = HttpService();
  // Calling getData method to fetch data from API
  httpService.getData();
}
