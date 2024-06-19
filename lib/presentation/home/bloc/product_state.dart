part of 'product_bloc.dart';

class ProductState extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class FetchAllProductsLoadingState extends ProductState {}

class FetchAllProductsSuccessState extends ProductState {
  final AllProductResponseModel allProductResponseModel;
  final String successMsg;

  FetchAllProductsSuccessState(
      {required this.allProductResponseModel, required this.successMsg});
  @override
  List<Object?> get props => [allProductResponseModel, successMsg];
}

class FetchAllProductsFailedState extends ProductState {
  final String errorMsg;

  FetchAllProductsFailedState({required this.errorMsg});
  @override
  List<Object?> get props => [errorMsg, errorMsg];
}
