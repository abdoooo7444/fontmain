import 'package:dio/dio.dart';
import 'package:ect_project/model/food_models.dart';

class foodApiServices {
  late Dio dio;

  foodApiServices() {
    dio = Dio(
      BaseOptions(
        baseUrl: "http://10.0.2.2:5000",
      ),
    );
  }

  Future<List<FoodModels>> getfood() async {
    try {
      final Response<List<dynamic>> response = await dio.get('/api/food');

      print("==================================================");
      print(response.data);
      print("==================================================");
      List<FoodModels> properties = [];

      if (response.data != null) {
        properties = response.data!
            .map((e) => FoodModels.fromJson(e as Map<String, dynamic>))
            .toList();
      }

      return properties;
    } catch (e) {
      print('Error retrieving residential data: $e');
      rethrow;
    }
  }

  Future<FoodModels?> addfoodtocart(FoodModels film) async {
    try {
      final Response<Map<String, dynamic>> response =
          await dio.post('/api/food', data: film.toJson());

      if (response.data != null) {
        return FoodModels.fromJson(response.data!);
      }

      return null;
    } catch (e) {
      print('Error adding new movie : $e');
      return null;
    }
  }

  // ignore: non_constant_identifier_names
  Future<FoodModels?> deletefood(FoodModels card) async {
    print("===========================================================");
    print(card.id);
    print(card.name);
    print(card.toJson());
    print("===========================================================");
    try {
      final Response<Map<String, dynamic>> response =
          await dio.delete('/api/food/${card.id}');
      if (response.data != null) {
        return FoodModels.fromJson(response.data!);
      }
      return null;
    } catch (e) {
      print('Error deleting card: $e');
      return null;
    }
  }
}
