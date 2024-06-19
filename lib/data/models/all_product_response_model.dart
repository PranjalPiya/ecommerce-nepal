// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'all_product_response_model.freezed.dart';
part 'all_product_response_model.g.dart';

@freezed
class AllProductResponseModel with _$AllProductResponseModel {
  const factory AllProductResponseModel({
    @JsonKey(name: "products") List<Product>? products,
    @JsonKey(name: "total") int? total,
    @JsonKey(name: "skip") int? skip,
    @JsonKey(name: "limit") int? limit,
  }) = _AllProductResponseModel;

  factory AllProductResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AllProductResponseModelFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "category") String? category,
    @JsonKey(name: "price") double? price,
    @JsonKey(name: "discountPercentage") double? discountPercentage,
    @JsonKey(name: "rating") double? rating,
    @JsonKey(name: "stock") int? stock,
    @JsonKey(name: "tags") List<String>? tags,
    @JsonKey(name: "brand") String? brand,
    @JsonKey(name: "sku") String? sku,
    @JsonKey(name: "weight") int? weight,
    @JsonKey(name: "dimensions") Dimensions? dimensions,
    @JsonKey(name: "warrantyInformation") String? warrantyInformation,
    @JsonKey(name: "shippingInformation") String? shippingInformation,
    @JsonKey(name: "availabilityStatus") String? availabilityStatus,
    @JsonKey(name: "reviews") List<Review>? reviews,
    @JsonKey(name: "returnPolicy") String? returnPolicy,
    @JsonKey(name: "minimumOrderQuantity") int? minimumOrderQuantity,
    @JsonKey(name: "meta") Meta? meta,
    @JsonKey(name: "images") List<String>? images,
    @JsonKey(name: "thumbnail") String? thumbnail,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class Dimensions with _$Dimensions {
  const factory Dimensions({
    @JsonKey(name: "width") double? width,
    @JsonKey(name: "height") double? height,
    @JsonKey(name: "depth") double? depth,
  }) = _Dimensions;

  factory Dimensions.fromJson(Map<String, dynamic> json) =>
      _$DimensionsFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    @JsonKey(name: "createdAt") String? createdAt,
    @JsonKey(name: "updatedAt") String? updatedAt,
    @JsonKey(name: "barcode") String? barcode,
    @JsonKey(name: "qrCode") String? qrCode,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class Review with _$Review {
  const factory Review({
    @JsonKey(name: "rating") int? rating,
    @JsonKey(name: "comment") String? comment,
    @JsonKey(name: "date") String? date,
    @JsonKey(name: "reviewerName") String? reviewerName,
    @JsonKey(name: "reviewerEmail") String? reviewerEmail,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
