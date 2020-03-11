import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mvvm/models/ipl.dart';


class Webservice {

  Future<List<Ipl>> fetchMovies(String keyword) async {

    final url = "https://api.myjson.com/bins/s5pvk";
    final response = await http.get(url);
    if(response.statusCode == 200) {

       final body = jsonDecode(response.body); 
       final Iterable json = body["news"];
       return json.map((ipl) => Ipl.fromJson(ipl)).toList();

    } else {
      throw Exception("Unable to perform request!");
    }
  }
}