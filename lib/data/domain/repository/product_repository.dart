import 'package:ecommerce_nepal/data/models/all_product_response_model.dart';
import 'package:ecommerce_nepal/data/models/category_model.dart';

abstract class ProductRepository {
  Future<AllProductResponseModel> getAllProduct();

  Future<List<CategoryModel>> fetchProductCategory();
}
