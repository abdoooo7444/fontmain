import 'package:dio/dio.dart';
import 'package:ect_project/model/film_model.dart';

class ApiServices {
  late Dio dio;

  ApiServices() {
    dio = Dio(
      BaseOptions(
        baseUrl: "http://10.0.2.2:5000",
      ),
    );
  }

  Future<List<FilmModel>> getfilm() async {
    try {
      final Response<List<dynamic>> response = await dio.get('/api/movie');
      List<FilmModel> properties = [];

      if (response.data != null) {
        properties = response.data!
            .map((e) => FilmModel.fromJson(e as Map<String, dynamic>))
            .toList();
      }

      return properties;
    } catch (e) {
      print('Error retrieving residential data: $e');
      rethrow;
    }
  }

  Future<FilmModel?> addMovietcinema(FilmModel film) async {
    try {
      final Response<Map<String, dynamic>> response =
          await dio.post('/api/movie', data: film.toJson());

      if (response.data != null) {
        return FilmModel.fromJson(response.data!);
      }

      return null;
    } catch (e) {
      print('Error adding new residential property: $e');
      return null;
    }
  }
}
