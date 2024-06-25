import 'dart:developer';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_nepal/core/constant/colors.dart';
import 'package:ecommerce_nepal/data/models/all_product_response_model.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product? productDetail;
  const ProductDetailsScreen({super.key, this.productDetail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Detail Product',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            CarouselSlider(
              items: List.generate(productDetail!.images!.length, (index) {
                log('current index ${productDetail!.images!}');
                return Container(
                  height: 200,
                  decoration: BoxDecoration(
                      border: Border.all(color: primaryColor),
                      image: DecorationImage(
                          image: NetworkImage(productDetail!.images![index]))),
                );
              }),

              //Slider Container properties
              options: CarouselOptions(
                height: 280.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            Text('${productDetail!.brand}'),
            Text('\$${productDetail!.price}'),
          ],
        ),
      ),
    );
  }
}
