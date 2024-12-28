```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Check if the key exists before accessing it
      final value = jsonData.containsKey('key') ? jsonData['key'] : null; 
      print(value);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Re-throw the exception to allow the caller to handle it.
    rethrow; 
  }
}
```