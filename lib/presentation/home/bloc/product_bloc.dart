import 'package:bloc/bloc.dart';
import 'package:ecommerce_nepal/data/domain/repository/product_repository.dart';
import 'package:ecommerce_nepal/data/models/all_product_response_model.dart';
import 'package:ecommerce_nepal/data/models/category_model.dart';
import 'package:equatable/equatable.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository productRepository;
  ProductBloc({
    required this.productRepository,
  }) : super(ProductState()) {
    on<FetchAllProductEvent>(fetchAllProduct);
    on<FetchProductCategoryEvent>(fetchProductCategory);
  }

  Future<void> fetchAllProduct(
      FetchAllProductEvent event, Emitter<ProductState> emitter) async {
    emitter.call(FetchAllProductsLoadingState());
    try {
      final res = await productRepository.getAllProduct();
      if (res.products!.isNotEmpty) {
        emitter.call(FetchAllProductsSuccessState(
            allProductResponseModel: res, successMsg: 'Fetched all products!'));
      } else {
        emitter.call(FetchAllProductsFailedState(
            errorMsg: 'Error while fetching all products!'));
      }
    } catch (e) {
      emitter.call(FetchAllProductsFailedState(errorMsg: '$e'));
    }
  }

  Future<void> fetchProductCategory(
      FetchProductCategoryEvent event, Emitter<ProductState> emitter) async {
    emitter.call(FetchProductCategoryLoading());
    try {
      final res = await productRepository.fetchProductCategory();
      if (res.isNotEmpty) {
        emitter.call(FetchProductCategorySuccess(
          categoryModel: res,
        ));
      } else {
        emitter.call(FetchProductCategoryFailed(
            errorMsg: 'Error while Fetching product category'));
      }
    } catch (e) {
      emitter.call(FetchProductCategoryFailed(errorMsg: '$e'));
    }
  }
}
