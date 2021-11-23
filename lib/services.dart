import 'dart:convert';

import 'package:first_project/api_call.dart';
import 'package:http/http.dart' as http;

Future<Album> getAlbum() async {
  final url = Uri.parse(
      "http://api.openweathermap.org/data/2.5/weather?q=lagos&appid=ec8d5ca6a17ebf7267ff28e81476aa3d");
  final response = await http.get(url);

  if (response.statusCode == 200) {
    // return Album.fromJson(jsonDecode(response.body));
    return Album.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}
