import 'dart:async';
import 'movie_api_provider.dart';

import '../models/item_model.dart';
import '../models/trailer_model.dart';

class Repository {
  final movieApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() => movieApiProvider.fetchMovieList();
  Future<TrailerModel> fetchTrailers(int movieId) => movieApiProvider.fetchTrailer(movieId);
}