import 'package:dio/dio.dart';
import 'package:ect_project/model/film_model.dart';

class cardApiServices {
  late Dio dio;

  cardApiServices() {
    dio = Dio(
      BaseOptions(
        baseUrl: "http://10.0.2.2:5000",
      ),
    );
  }

  Future<List<FilmModel>> getcard() async {
    try {
      final Response response = await dio.get('/api/card');
      List<FilmModel> Cards = [];

      if (response.data != null) {
        Cards = List<FilmModel>.from(
            response.data.map((e) => FilmModel.fromJson(e)));
      }
      return Cards;
    } catch (e) {
      print('Error retrieving residential data: $e');
      rethrow;
    }
  }

  Future<FilmModel?> addMovietomycart(FilmModel film) async {
    try {
      final Response<Map<String, dynamic>> response =
          await dio.post('/api/card', data: film.toJson());

      if (response.data != null) {
        return FilmModel.fromJson(response.data!);
      }

      return null;
    } catch (e) {
      print('Error adding new movie : $e');
      return null;
    }
  }

  // ignore: non_constant_identifier_names
  Future<FilmModel?> deleteCard(FilmModel card) async {
    try {
      final Response<Map<String, dynamic>> response =
          await dio.delete('/api/card/${card.id}');
      if (response.data != null) {
        return FilmModel.fromJson(response.data!);
      }
      return null;
    } catch (e) {
      print('Error deleting card: $e');
      return null;
    }
  }
}
