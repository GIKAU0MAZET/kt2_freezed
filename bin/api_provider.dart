import 'package:dio/dio.dart';
import 'models/cart_model/cart_model.dart';

abstract class ApiPaths {
  static String porducts = 'carts';
}

class ApiProvider {
  final _client = Dio(BaseOptions(baseUrl: 'https://fakestoreapi.com/'));

  Future<List<CartModel>> getProducts() async {
    final response = await _client.get(ApiPaths.porducts);
    final jsonList = response.data as List<dynamic>;

    final result = jsonList.map((e) => CartModel.fromJson(e)).toList();
    return result; 
  }
}