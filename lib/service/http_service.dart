// Importing necessary packages
import 'dart:convert';

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
      if (response.statusCode == 200) {
        print(response.body);
      } else {
        throw Exception('Failed to get data from API');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<void> postData(
    Map<String, dynamic> userData,
  ) async {
    //Map<String,dynamic>userData
    var jsonData = jsonEncode(userData);

    try {
      final response =
      await http.post(Uri.parse(baseUrl + endpoint), body: jsonData);
      switch (response.statusCode) {
        case 201:
          print('Created successfully');
          break;
        case 400:
          print('Bad request');
          break;
        case 401:
          print('unauthorized');
          break;
        case 403:
          print('forbidden');
          break;
      }
    }
    catch(e){
    print('error:$e');
    }
    }
  }
