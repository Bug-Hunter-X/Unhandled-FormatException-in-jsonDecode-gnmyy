```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // ... process jsonData ...
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
        //Handle the format exception, perhaps retry the request or log the error.
      } catch (e) {
        print('An unexpected error occurred: $e');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    //Consider rethrowing or handling exceptions more specifically
  }
}
```