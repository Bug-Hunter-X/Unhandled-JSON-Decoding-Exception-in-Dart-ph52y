```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data successfully
      final jsonData = json.decode(response.body);
      // Accessing data might throw error if jsonData is not a Map
      final name = jsonData['name']; //this line may throw an exception
      print('Name: $name');
    } else {
      // Handle error response
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle any potential exceptions
    print('Error: $e');
    //rethrow the exception for higher level handling
    rethrow;
  }
}
```