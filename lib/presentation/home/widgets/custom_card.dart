import 'package:ecommerce_nepal/data/models/all_product_response_model.dart';
import 'package:ecommerce_nepal/presentation/home/bloc/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget customContainer({Product? productDetail}) {
  return Column(
    children: [
      Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage('${productDetail!.thumbnail}')),
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(8)),
      ),
      const SizedBox(height: 5),
      Text(
        '${productDetail.title}',
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      const SizedBox(height: 2),
      Text(
        '${productDetail.brand}',
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 13,
        ),
      ),
      const SizedBox(
        height: 1,
      ),
      Text(
        '\$${productDetail.price}',
        // "\$800",
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
    ],
  );
}
