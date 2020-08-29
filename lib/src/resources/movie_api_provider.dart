import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';

import '../models/item_model.dart';
import '../models/trailer_model.dart';

class MovieApiProvider {
  Client client = Client();
  final _apiKey = '1a5497bfbb9ae0567d739d21c4b2c7d7';
  final _baseUrl = "http://api.themoviedb.org/3/movie";

  Future<ItemModel> fetchMovieList() async {
    final response = await client.get('$_baseUrl/popular?api_key=$_apiKey');

    if(response.statusCode == 200) {

      return ItemModel.fromJson(json.decode(response.body));
    } else {

      throw Exception('Failed to load movie list');
    }
  }

  Future<TrailerModel> fetchTrailer(movieId) async {
    final response = await client.get('$_baseUrl/$movieId/videos?api_key=$_apiKey');

    if(response.statusCode == 200) {
      return TrailerModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to Load Movie Trailers');
    }
  }
}