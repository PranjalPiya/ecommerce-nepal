// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_product_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllProductResponseModel _$AllProductResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AllProductResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AllProductResponseModel {
  @JsonKey(name: "products")
  List<Product>? get products => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "skip")
  int? get skip => throw _privateConstructorUsedError;
  @JsonKey(name: "limit")
  int? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllProductResponseModelCopyWith<AllProductResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllProductResponseModelCopyWith<$Res> {
  factory $AllProductResponseModelCopyWith(AllProductResponseModel value,
          $Res Function(AllProductResponseModel) then) =
      _$AllProductResponseModelCopyWithImpl<$Res, AllProductResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "products") List<Product>? products,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "skip") int? skip,
      @JsonKey(name: "limit") int? limit});
}

/// @nodoc
class _$AllProductResponseModelCopyWithImpl<$Res,
        $Val extends AllProductResponseModel>
    implements $AllProductResponseModelCopyWith<$Res> {
  _$AllProductResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? total = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllProductResponseModelImplCopyWith<$Res>
    implements $AllProductResponseModelCopyWith<$Res> {
  factory _$$AllProductResponseModelImplCopyWith(
          _$AllProductResponseModelImpl value,
          $Res Function(_$AllProductResponseModelImpl) then) =
      __$$AllProductResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "products") List<Product>? products,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "skip") int? skip,
      @JsonKey(name: "limit") int? limit});
}

/// @nodoc
class __$$AllProductResponseModelImplCopyWithImpl<$Res>
    extends _$AllProductResponseModelCopyWithImpl<$Res,
        _$AllProductResponseModelImpl>
    implements _$$AllProductResponseModelImplCopyWith<$Res> {
  __$$AllProductResponseModelImplCopyWithImpl(
      _$AllProductResponseModelImpl _value,
      $Res Function(_$AllProductResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? total = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$AllProductResponseModelImpl(
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllProductResponseModelImpl implements _AllProductResponseModel {
  const _$AllProductResponseModelImpl(
      {@JsonKey(name: "products") final List<Product>? products,
      @JsonKey(name: "total") this.total,
      @JsonKey(name: "skip") this.skip,
      @JsonKey(name: "limit") this.limit})
      : _products = products;

  factory _$AllProductResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllProductResponseModelImplFromJson(json);

  final List<Product>? _products;
  @override
  @JsonKey(name: "products")
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "total")
  final int? total;
  @override
  @JsonKey(name: "skip")
  final int? skip;
  @override
  @JsonKey(name: "limit")
  final int? limit;

  @override
  String toString() {
    return 'AllProductResponseModel(products: $products, total: $total, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllProductResponseModelImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_products), total, skip, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllProductResponseModelImplCopyWith<_$AllProductResponseModelImpl>
      get copyWith => __$$AllProductResponseModelImplCopyWithImpl<
          _$AllProductResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllProductResponseModelImplToJson(
      this,
    );
  }
}

abstract class _AllProductResponseModel implements AllProductResponseModel {
  const factory _AllProductResponseModel(
          {@JsonKey(name: "products") final List<Product>? products,
          @JsonKey(name: "total") final int? total,
          @JsonKey(name: "skip") final int? skip,
          @JsonKey(name: "limit") final int? limit}) =
      _$AllProductResponseModelImpl;

  factory _AllProductResponseModel.fromJson(Map<String, dynamic> json) =
      _$AllProductResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "products")
  List<Product>? get products;
  @override
  @JsonKey(name: "total")
  int? get total;
  @override
  @JsonKey(name: "skip")
  int? get skip;
  @override
  @JsonKey(name: "limit")
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$$AllProductResponseModelImplCopyWith<_$AllProductResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "discountPercentage")
  double? get discountPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "stock")
  int? get stock => throw _privateConstructorUsedError;
  @JsonKey(name: "tags")
  List<String>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: "brand")
  String? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: "sku")
  String? get sku => throw _privateConstructorUsedError;
  @JsonKey(name: "weight")
  int? get weight => throw _privateConstructorUsedError;
  @JsonKey(name: "dimensions")
  Dimensions? get dimensions => throw _privateConstructorUsedError;
  @JsonKey(name: "warrantyInformation")
  String? get warrantyInformation => throw _privateConstructorUsedError;
  @JsonKey(name: "shippingInformation")
  String? get shippingInformation => throw _privateConstructorUsedError;
  @JsonKey(name: "availabilityStatus")
  String? get availabilityStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "reviews")
  List<Review>? get reviews => throw _privateConstructorUsedError;
  @JsonKey(name: "returnPolicy")
  String? get returnPolicy => throw _privateConstructorUsedError;
  @JsonKey(name: "minimumOrderQuantity")
  int? get minimumOrderQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "meta")
  Meta? get meta => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<String>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail")
  String? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
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
      @JsonKey(name: "thumbnail") String? thumbnail});

  $DimensionsCopyWith<$Res>? get dimensions;
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? price = freezed,
    Object? discountPercentage = freezed,
    Object? rating = freezed,
    Object? stock = freezed,
    Object? tags = freezed,
    Object? brand = freezed,
    Object? sku = freezed,
    Object? weight = freezed,
    Object? dimensions = freezed,
    Object? warrantyInformation = freezed,
    Object? shippingInformation = freezed,
    Object? availabilityStatus = freezed,
    Object? reviews = freezed,
    Object? returnPolicy = freezed,
    Object? minimumOrderQuantity = freezed,
    Object? meta = freezed,
    Object? images = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      dimensions: freezed == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as Dimensions?,
      warrantyInformation: freezed == warrantyInformation
          ? _value.warrantyInformation
          : warrantyInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingInformation: freezed == shippingInformation
          ? _value.shippingInformation
          : shippingInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      availabilityStatus: freezed == availabilityStatus
          ? _value.availabilityStatus
          : availabilityStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
      returnPolicy: freezed == returnPolicy
          ? _value.returnPolicy
          : returnPolicy // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumOrderQuantity: freezed == minimumOrderQuantity
          ? _value.minimumOrderQuantity
          : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DimensionsCopyWith<$Res>? get dimensions {
    if (_value.dimensions == null) {
      return null;
    }

    return $DimensionsCopyWith<$Res>(_value.dimensions!, (value) {
      return _then(_value.copyWith(dimensions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
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
      @JsonKey(name: "thumbnail") String? thumbnail});

  @override
  $DimensionsCopyWith<$Res>? get dimensions;
  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? price = freezed,
    Object? discountPercentage = freezed,
    Object? rating = freezed,
    Object? stock = freezed,
    Object? tags = freezed,
    Object? brand = freezed,
    Object? sku = freezed,
    Object? weight = freezed,
    Object? dimensions = freezed,
    Object? warrantyInformation = freezed,
    Object? shippingInformation = freezed,
    Object? availabilityStatus = freezed,
    Object? reviews = freezed,
    Object? returnPolicy = freezed,
    Object? minimumOrderQuantity = freezed,
    Object? meta = freezed,
    Object? images = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$ProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      dimensions: freezed == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as Dimensions?,
      warrantyInformation: freezed == warrantyInformation
          ? _value.warrantyInformation
          : warrantyInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingInformation: freezed == shippingInformation
          ? _value.shippingInformation
          : shippingInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      availabilityStatus: freezed == availabilityStatus
          ? _value.availabilityStatus
          : availabilityStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      reviews: freezed == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
      returnPolicy: freezed == returnPolicy
          ? _value.returnPolicy
          : returnPolicy // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumOrderQuantity: freezed == minimumOrderQuantity
          ? _value.minimumOrderQuantity
          : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "category") this.category,
      @JsonKey(name: "price") this.price,
      @JsonKey(name: "discountPercentage") this.discountPercentage,
      @JsonKey(name: "rating") this.rating,
      @JsonKey(name: "stock") this.stock,
      @JsonKey(name: "tags") final List<String>? tags,
      @JsonKey(name: "brand") this.brand,
      @JsonKey(name: "sku") this.sku,
      @JsonKey(name: "weight") this.weight,
      @JsonKey(name: "dimensions") this.dimensions,
      @JsonKey(name: "warrantyInformation") this.warrantyInformation,
      @JsonKey(name: "shippingInformation") this.shippingInformation,
      @JsonKey(name: "availabilityStatus") this.availabilityStatus,
      @JsonKey(name: "reviews") final List<Review>? reviews,
      @JsonKey(name: "returnPolicy") this.returnPolicy,
      @JsonKey(name: "minimumOrderQuantity") this.minimumOrderQuantity,
      @JsonKey(name: "meta") this.meta,
      @JsonKey(name: "images") final List<String>? images,
      @JsonKey(name: "thumbnail") this.thumbnail})
      : _tags = tags,
        _reviews = reviews,
        _images = images;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "category")
  final String? category;
  @override
  @JsonKey(name: "price")
  final double? price;
  @override
  @JsonKey(name: "discountPercentage")
  final double? discountPercentage;
  @override
  @JsonKey(name: "rating")
  final double? rating;
  @override
  @JsonKey(name: "stock")
  final int? stock;
  final List<String>? _tags;
  @override
  @JsonKey(name: "tags")
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "brand")
  final String? brand;
  @override
  @JsonKey(name: "sku")
  final String? sku;
  @override
  @JsonKey(name: "weight")
  final int? weight;
  @override
  @JsonKey(name: "dimensions")
  final Dimensions? dimensions;
  @override
  @JsonKey(name: "warrantyInformation")
  final String? warrantyInformation;
  @override
  @JsonKey(name: "shippingInformation")
  final String? shippingInformation;
  @override
  @JsonKey(name: "availabilityStatus")
  final String? availabilityStatus;
  final List<Review>? _reviews;
  @override
  @JsonKey(name: "reviews")
  List<Review>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "returnPolicy")
  final String? returnPolicy;
  @override
  @JsonKey(name: "minimumOrderQuantity")
  final int? minimumOrderQuantity;
  @override
  @JsonKey(name: "meta")
  final Meta? meta;
  final List<String>? _images;
  @override
  @JsonKey(name: "images")
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "thumbnail")
  final String? thumbnail;

  @override
  String toString() {
    return 'Product(id: $id, title: $title, description: $description, category: $category, price: $price, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, tags: $tags, brand: $brand, sku: $sku, weight: $weight, dimensions: $dimensions, warrantyInformation: $warrantyInformation, shippingInformation: $shippingInformation, availabilityStatus: $availabilityStatus, reviews: $reviews, returnPolicy: $returnPolicy, minimumOrderQuantity: $minimumOrderQuantity, meta: $meta, images: $images, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.dimensions, dimensions) ||
                other.dimensions == dimensions) &&
            (identical(other.warrantyInformation, warrantyInformation) ||
                other.warrantyInformation == warrantyInformation) &&
            (identical(other.shippingInformation, shippingInformation) ||
                other.shippingInformation == shippingInformation) &&
            (identical(other.availabilityStatus, availabilityStatus) ||
                other.availabilityStatus == availabilityStatus) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.returnPolicy, returnPolicy) ||
                other.returnPolicy == returnPolicy) &&
            (identical(other.minimumOrderQuantity, minimumOrderQuantity) ||
                other.minimumOrderQuantity == minimumOrderQuantity) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        description,
        category,
        price,
        discountPercentage,
        rating,
        stock,
        const DeepCollectionEquality().hash(_tags),
        brand,
        sku,
        weight,
        dimensions,
        warrantyInformation,
        shippingInformation,
        availabilityStatus,
        const DeepCollectionEquality().hash(_reviews),
        returnPolicy,
        minimumOrderQuantity,
        meta,
        const DeepCollectionEquality().hash(_images),
        thumbnail
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "category") final String? category,
      @JsonKey(name: "price") final double? price,
      @JsonKey(name: "discountPercentage") final double? discountPercentage,
      @JsonKey(name: "rating") final double? rating,
      @JsonKey(name: "stock") final int? stock,
      @JsonKey(name: "tags") final List<String>? tags,
      @JsonKey(name: "brand") final String? brand,
      @JsonKey(name: "sku") final String? sku,
      @JsonKey(name: "weight") final int? weight,
      @JsonKey(name: "dimensions") final Dimensions? dimensions,
      @JsonKey(name: "warrantyInformation") final String? warrantyInformation,
      @JsonKey(name: "shippingInformation") final String? shippingInformation,
      @JsonKey(name: "availabilityStatus") final String? availabilityStatus,
      @JsonKey(name: "reviews") final List<Review>? reviews,
      @JsonKey(name: "returnPolicy") final String? returnPolicy,
      @JsonKey(name: "minimumOrderQuantity") final int? minimumOrderQuantity,
      @JsonKey(name: "meta") final Meta? meta,
      @JsonKey(name: "images") final List<String>? images,
      @JsonKey(name: "thumbnail") final String? thumbnail}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "category")
  String? get category;
  @override
  @JsonKey(name: "price")
  double? get price;
  @override
  @JsonKey(name: "discountPercentage")
  double? get discountPercentage;
  @override
  @JsonKey(name: "rating")
  double? get rating;
  @override
  @JsonKey(name: "stock")
  int? get stock;
  @override
  @JsonKey(name: "tags")
  List<String>? get tags;
  @override
  @JsonKey(name: "brand")
  String? get brand;
  @override
  @JsonKey(name: "sku")
  String? get sku;
  @override
  @JsonKey(name: "weight")
  int? get weight;
  @override
  @JsonKey(name: "dimensions")
  Dimensions? get dimensions;
  @override
  @JsonKey(name: "warrantyInformation")
  String? get warrantyInformation;
  @override
  @JsonKey(name: "shippingInformation")
  String? get shippingInformation;
  @override
  @JsonKey(name: "availabilityStatus")
  String? get availabilityStatus;
  @override
  @JsonKey(name: "reviews")
  List<Review>? get reviews;
  @override
  @JsonKey(name: "returnPolicy")
  String? get returnPolicy;
  @override
  @JsonKey(name: "minimumOrderQuantity")
  int? get minimumOrderQuantity;
  @override
  @JsonKey(name: "meta")
  Meta? get meta;
  @override
  @JsonKey(name: "images")
  List<String>? get images;
  @override
  @JsonKey(name: "thumbnail")
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Dimensions _$DimensionsFromJson(Map<String, dynamic> json) {
  return _Dimensions.fromJson(json);
}

/// @nodoc
mixin _$Dimensions {
  @JsonKey(name: "width")
  double? get width => throw _privateConstructorUsedError;
  @JsonKey(name: "height")
  double? get height => throw _privateConstructorUsedError;
  @JsonKey(name: "depth")
  double? get depth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DimensionsCopyWith<Dimensions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DimensionsCopyWith<$Res> {
  factory $DimensionsCopyWith(
          Dimensions value, $Res Function(Dimensions) then) =
      _$DimensionsCopyWithImpl<$Res, Dimensions>;
  @useResult
  $Res call(
      {@JsonKey(name: "width") double? width,
      @JsonKey(name: "height") double? height,
      @JsonKey(name: "depth") double? depth});
}

/// @nodoc
class _$DimensionsCopyWithImpl<$Res, $Val extends Dimensions>
    implements $DimensionsCopyWith<$Res> {
  _$DimensionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? depth = freezed,
  }) {
    return _then(_value.copyWith(
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DimensionsImplCopyWith<$Res>
    implements $DimensionsCopyWith<$Res> {
  factory _$$DimensionsImplCopyWith(
          _$DimensionsImpl value, $Res Function(_$DimensionsImpl) then) =
      __$$DimensionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "width") double? width,
      @JsonKey(name: "height") double? height,
      @JsonKey(name: "depth") double? depth});
}

/// @nodoc
class __$$DimensionsImplCopyWithImpl<$Res>
    extends _$DimensionsCopyWithImpl<$Res, _$DimensionsImpl>
    implements _$$DimensionsImplCopyWith<$Res> {
  __$$DimensionsImplCopyWithImpl(
      _$DimensionsImpl _value, $Res Function(_$DimensionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? depth = freezed,
  }) {
    return _then(_$DimensionsImpl(
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DimensionsImpl implements _Dimensions {
  const _$DimensionsImpl(
      {@JsonKey(name: "width") this.width,
      @JsonKey(name: "height") this.height,
      @JsonKey(name: "depth") this.depth});

  factory _$DimensionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DimensionsImplFromJson(json);

  @override
  @JsonKey(name: "width")
  final double? width;
  @override
  @JsonKey(name: "height")
  final double? height;
  @override
  @JsonKey(name: "depth")
  final double? depth;

  @override
  String toString() {
    return 'Dimensions(width: $width, height: $height, depth: $depth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DimensionsImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.depth, depth) || other.depth == depth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, width, height, depth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DimensionsImplCopyWith<_$DimensionsImpl> get copyWith =>
      __$$DimensionsImplCopyWithImpl<_$DimensionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DimensionsImplToJson(
      this,
    );
  }
}

abstract class _Dimensions implements Dimensions {
  const factory _Dimensions(
      {@JsonKey(name: "width") final double? width,
      @JsonKey(name: "height") final double? height,
      @JsonKey(name: "depth") final double? depth}) = _$DimensionsImpl;

  factory _Dimensions.fromJson(Map<String, dynamic> json) =
      _$DimensionsImpl.fromJson;

  @override
  @JsonKey(name: "width")
  double? get width;
  @override
  @JsonKey(name: "height")
  double? get height;
  @override
  @JsonKey(name: "depth")
  double? get depth;
  @override
  @JsonKey(ignore: true)
  _$$DimensionsImplCopyWith<_$DimensionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  @JsonKey(name: "createdAt")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "barcode")
  String? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "qrCode")
  String? get qrCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call(
      {@JsonKey(name: "createdAt") String? createdAt,
      @JsonKey(name: "updatedAt") String? updatedAt,
      @JsonKey(name: "barcode") String? barcode,
      @JsonKey(name: "qrCode") String? qrCode});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? barcode = freezed,
    Object? qrCode = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(
          _$MetaImpl value, $Res Function(_$MetaImpl) then) =
      __$$MetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "createdAt") String? createdAt,
      @JsonKey(name: "updatedAt") String? updatedAt,
      @JsonKey(name: "barcode") String? barcode,
      @JsonKey(name: "qrCode") String? qrCode});
}

/// @nodoc
class __$$MetaImplCopyWithImpl<$Res>
    extends _$MetaCopyWithImpl<$Res, _$MetaImpl>
    implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? barcode = freezed,
    Object? qrCode = freezed,
  }) {
    return _then(_$MetaImpl(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaImpl implements _Meta {
  const _$MetaImpl(
      {@JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "barcode") this.barcode,
      @JsonKey(name: "qrCode") this.qrCode});

  factory _$MetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaImplFromJson(json);

  @override
  @JsonKey(name: "createdAt")
  final String? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final String? updatedAt;
  @override
  @JsonKey(name: "barcode")
  final String? barcode;
  @override
  @JsonKey(name: "qrCode")
  final String? qrCode;

  @override
  String toString() {
    return 'Meta(createdAt: $createdAt, updatedAt: $updatedAt, barcode: $barcode, qrCode: $qrCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, createdAt, updatedAt, barcode, qrCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
      {@JsonKey(name: "createdAt") final String? createdAt,
      @JsonKey(name: "updatedAt") final String? updatedAt,
      @JsonKey(name: "barcode") final String? barcode,
      @JsonKey(name: "qrCode") final String? qrCode}) = _$MetaImpl;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$MetaImpl.fromJson;

  @override
  @JsonKey(name: "createdAt")
  String? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  String? get updatedAt;
  @override
  @JsonKey(name: "barcode")
  String? get barcode;
  @override
  @JsonKey(name: "qrCode")
  String? get qrCode;
  @override
  @JsonKey(ignore: true)
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  @JsonKey(name: "rating")
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "comment")
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "reviewerName")
  String? get reviewerName => throw _privateConstructorUsedError;
  @JsonKey(name: "reviewerEmail")
  String? get reviewerEmail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {@JsonKey(name: "rating") int? rating,
      @JsonKey(name: "comment") String? comment,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "reviewerName") String? reviewerName,
      @JsonKey(name: "reviewerEmail") String? reviewerEmail});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? comment = freezed,
    Object? date = freezed,
    Object? reviewerName = freezed,
    Object? reviewerEmail = freezed,
  }) {
    return _then(_value.copyWith(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewerName: freezed == reviewerName
          ? _value.reviewerName
          : reviewerName // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewerEmail: freezed == reviewerEmail
          ? _value.reviewerEmail
          : reviewerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewImplCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$ReviewImplCopyWith(
          _$ReviewImpl value, $Res Function(_$ReviewImpl) then) =
      __$$ReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rating") int? rating,
      @JsonKey(name: "comment") String? comment,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "reviewerName") String? reviewerName,
      @JsonKey(name: "reviewerEmail") String? reviewerEmail});
}

/// @nodoc
class __$$ReviewImplCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$ReviewImpl>
    implements _$$ReviewImplCopyWith<$Res> {
  __$$ReviewImplCopyWithImpl(
      _$ReviewImpl _value, $Res Function(_$ReviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? comment = freezed,
    Object? date = freezed,
    Object? reviewerName = freezed,
    Object? reviewerEmail = freezed,
  }) {
    return _then(_$ReviewImpl(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewerName: freezed == reviewerName
          ? _value.reviewerName
          : reviewerName // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewerEmail: freezed == reviewerEmail
          ? _value.reviewerEmail
          : reviewerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewImpl implements _Review {
  const _$ReviewImpl(
      {@JsonKey(name: "rating") this.rating,
      @JsonKey(name: "comment") this.comment,
      @JsonKey(name: "date") this.date,
      @JsonKey(name: "reviewerName") this.reviewerName,
      @JsonKey(name: "reviewerEmail") this.reviewerEmail});

  factory _$ReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewImplFromJson(json);

  @override
  @JsonKey(name: "rating")
  final int? rating;
  @override
  @JsonKey(name: "comment")
  final String? comment;
  @override
  @JsonKey(name: "date")
  final String? date;
  @override
  @JsonKey(name: "reviewerName")
  final String? reviewerName;
  @override
  @JsonKey(name: "reviewerEmail")
  final String? reviewerEmail;

  @override
  String toString() {
    return 'Review(rating: $rating, comment: $comment, date: $date, reviewerName: $reviewerName, reviewerEmail: $reviewerEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.reviewerName, reviewerName) ||
                other.reviewerName == reviewerName) &&
            (identical(other.reviewerEmail, reviewerEmail) ||
                other.reviewerEmail == reviewerEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, rating, comment, date, reviewerName, reviewerEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      __$$ReviewImplCopyWithImpl<_$ReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewImplToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  const factory _Review(
          {@JsonKey(name: "rating") final int? rating,
          @JsonKey(name: "comment") final String? comment,
          @JsonKey(name: "date") final String? date,
          @JsonKey(name: "reviewerName") final String? reviewerName,
          @JsonKey(name: "reviewerEmail") final String? reviewerEmail}) =
      _$ReviewImpl;

  factory _Review.fromJson(Map<String, dynamic> json) = _$ReviewImpl.fromJson;

  @override
  @JsonKey(name: "rating")
  int? get rating;
  @override
  @JsonKey(name: "comment")
  String? get comment;
  @override
  @JsonKey(name: "date")
  String? get date;
  @override
  @JsonKey(name: "reviewerName")
  String? get reviewerName;
  @override
  @JsonKey(name: "reviewerEmail")
  String? get reviewerEmail;
  @override
  @JsonKey(ignore: true)
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
