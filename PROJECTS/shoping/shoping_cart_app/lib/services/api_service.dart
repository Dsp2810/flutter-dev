import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/items.dart';

const String baseUrl = 'http://localhost:5000/items'; // change if hosted

class ApiService {
  static Future<List<Item>> getItems() async {
    final response = await http.get(Uri.parse(baseUrl));
    print("Resopnse status: ${response.statusCode}");
    print("Resopnse body: ${response.body}");
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data.map((e) => Item.fromJson(e)).toList();
    } else {
      throw Exception("Failed to load items");
    }
  }

  static Future<void> addItem(Item item) async {
    await http.post(
      Uri.parse(baseUrl),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(item.toJson()),
    );
  }

  static Future<void> deleteItem(String id) async {
    await http.delete(Uri.parse('$baseUrl/$id'));
  }

  static Future<void> updateItem(String id, Item item) async {
    await http.put(
      Uri.parse('$baseUrl/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(item.toJson()),
    );
  }
}
