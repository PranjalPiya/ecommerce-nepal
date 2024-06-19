import 'package:bloc/bloc.dart';
import 'package:ecommerce_nepal/data/domain/repository/product_repository.dart';
import 'package:ecommerce_nepal/data/models/all_product_response_model.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository productRepository;
  ProductBloc({
    required this.productRepository,
  }) : super(ProductState()) {
    on<FetchAllProductEvent>(fetchAllProduct);
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
}
