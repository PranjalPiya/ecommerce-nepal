import 'package:ecommerce_nepal/data/models/all_product_response_model.dart';

abstract class ProductRepository {
  Future<AllProductResponseModel> getAllProduct();
}
