```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      if(jsonData is Map && jsonData.containsKey('name') && jsonData['name'] is String){
        final name = jsonData['name'] as String;
        print('Name: $name');
      }else{
        print('Invalid or Missing Data');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow;
  }
}
```