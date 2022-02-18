import 'package:e_commerce_app/ui/products/models/product_model.dart';
import 'package:http/http.dart' as http;

class BadRequestException implements Exception {}

class ProductsRemoteDataSource {
  String apiUrl = 'https://fakestoreapi.com';

  Future<List<ProductModel>> getProductList() async {
    try {
      final response = await http.get(
        Uri.parse('$apiUrl/products'),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
        },
      );
      if (response.statusCode == 200) {
        return productModelFromJson(response.body);
      } else {
        throw BadRequestException();
      }
    } catch (e) {
      throw BadRequestException();
    }
  }
}
