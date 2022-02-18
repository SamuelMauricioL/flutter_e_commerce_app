import 'package:e_commerce_app/core/error/exceptions.dart';
import 'package:e_commerce_app/ui/products/data/models/product_model.dart';
import 'package:http/http.dart' as http;

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
      switch (response.statusCode) {
        case 200:
          return productModelFromJson(response.body);
        case 400:
          throw ServerException();
        default:
          throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }
}
