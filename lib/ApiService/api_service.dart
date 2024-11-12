import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:museum_api_data/model/museum_Model.dart';

class ApiService {
  final String baseUrl = 'https://collectionapi.metmuseum.org';

  Future<List<Department>> fetchDepartments() async {
    final response = await http.get(Uri.parse('$baseUrl/public/collection/v1/departments'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return (data["departments"] as List)
          .map((json) => Department.fromJson(json))
          .toList();
    } else {
      throw Exception('Failed to load departments');
    }
  }
}
