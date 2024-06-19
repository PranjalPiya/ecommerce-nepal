import 'dart:developer';

import 'package:ecommerce_nepal/core/helper/dio_helper.dart';
import 'package:ecommerce_nepal/data/domain/repository/product_repository.dart';
import 'package:ecommerce_nepal/data/models/all_product_response_model.dart';

class ProductRepositoryImpl implements ProductRepository {
  final dioHelper = DioHelper();

  @override
  Future<AllProductResponseModel> getAllProduct() async {
    try {
      final response = await dioHelper.getData(path: 'products');
      if (response != null) {
        return AllProductResponseModel.fromJson(response);
      } else {
        return const AllProductResponseModel();
      }
    } catch (e) {
      log('Fetching all product error: $e');
      rethrow;
    }
  }
}
