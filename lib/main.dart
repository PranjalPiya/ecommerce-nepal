import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ecommerce_nepal/core/helper/dio_helper.dart';
import 'package:ecommerce_nepal/data/domain/repository_imp/product_repo_imp.dart';
import 'package:ecommerce_nepal/presentation/home/bloc/product_bloc.dart';
import 'package:ecommerce_nepal/presentation/home/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              ProductBloc(productRepository: ProductRepositoryImpl())
                ..add(FetchAllProductEvent()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}
