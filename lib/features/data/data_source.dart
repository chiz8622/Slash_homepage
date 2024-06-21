import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

Future<Map<String, dynamic>> parseItemsFromFile() async {
  try {
    final String jsonString = await rootBundle.loadString('assets/dummy_data.json');
    final Map<String, dynamic> jsonData = jsonDecode(jsonString);
    return jsonData;
  } catch (e) {
    print('Error loading and parsing asset file: $e');
    return {};
  }
}
