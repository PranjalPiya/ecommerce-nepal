import 'dart:developer';

import 'package:ecommerce_nepal/core/constant/colors.dart';
import 'package:ecommerce_nepal/data/models/category_model.dart';
import 'package:ecommerce_nepal/presentation/home/bloc/product_bloc.dart';
import 'package:ecommerce_nepal/presentation/home/widgets/custom_card.dart';
import 'package:ecommerce_nepal/presentation/home/widgets/custom_head_section.dart';
import 'package:ecommerce_nepal/presentation/product/screens/product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          homeHeadSection(),

          const TabBar(
              labelColor: primaryColor,
              labelStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              indicatorPadding: EdgeInsets.symmetric(horizontal: 50),
              // unselectedLabelColor: bgColor,
              dividerColor: Colors.transparent,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: primaryColor,
              tabs: [
                Tab(
                  child: Text('Home'),
                ),
                Tab(
                  child: Text('Category'),
                ),
              ]),
          const SizedBox(height: 10),
          const Expanded(
            child: TabBarView(children: [
              HomeSection(),
              //
              CategorySection(),
            ]),
          ),
          //
        ],
      ),
    );
  }
}

List<String> images = [
  //beauty
  'https://images.pexels.com/photos/3910071/pexels-photo-3910071.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  //fragrance
  'https://images.pexels.com/photos/10837815/pexels-photo-10837815.jpeg?auto=compress&cs=tinysrgb&w=600',
  //Furniture
  'https://images.pexels.com/photos/1866149/pexels-photo-1866149.jpeg?auto=compress&cs=tinysrgb&w=600',
  //grocery
  'https://images.pexels.com/photos/3962285/pexels-photo-3962285.jpeg?auto=compress&cs=tinysrgb&w=600',
  //home decor
  'https://images.pexels.com/photos/1005058/pexels-photo-1005058.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  //kitchen accessory
  'https://images.pexels.com/photos/6996085/pexels-photo-6996085.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  //laptop
  'https://images.pexels.com/photos/331684/pexels-photo-331684.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  //mens shirts
  'https://images.pexels.com/photos/297933/pexels-photo-297933.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  //mens shoes
  'https://images.pexels.com/photos/1598505/pexels-photo-1598505.jpeg?auto=compress&cs=tinysrgb&w=600',
  //mans watches
  'https://images.pexels.com/photos/17147826/pexels-photo-17147826/free-photo-of-close-up-of-rolex-watch-on-hand.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  //mobile accessories
  'https://images.pexels.com/photos/4334162/pexels-photo-4334162.jpeg?auto=compress&cs=tinysrgb&w=600',
  //motorcycle
  'https://images.pexels.com/photos/819805/pexels-photo-819805.jpeg?auto=compress&cs=tinysrgb&w=600',
  //skin care
  'https://images.pexels.com/photos/4239013/pexels-photo-4239013.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  //smartphone
  'https://images.pexels.com/photos/12882853/pexels-photo-12882853.png?auto=compress&cs=tinysrgb&w=600',
  //sport access
  'https://images.pexels.com/photos/6740823/pexels-photo-6740823.jpeg?auto=compress&cs=tinysrgb&w=600',
  //sunglasses
  'https://images.pexels.com/photos/1499477/pexels-photo-1499477.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  //tablets
  'https://images.pexels.com/photos/221185/pexels-photo-221185.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  //tops
  'https://images.pexels.com/photos/16883174/pexels-photo-16883174/free-photo-of-smiling-women-at-tennis-court.jpeg?auto=compress&cs=tinysrgb&w=600',
  //vehicle
  'https://images.pexels.com/photos/164634/pexels-photo-164634.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  //women bags
  'https://images.pexels.com/photos/15623365/pexels-photo-15623365/free-photo-of-bag-belt-and-accessories-from-louis-vuitton.jpeg?auto=compress&cs=tinysrgb&w=600',
  //women dresses
  'https://images.pexels.com/photos/934063/pexels-photo-934063.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  //women jewellers
  'https://images.pexels.com/photos/265856/pexels-photo-265856.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  //women shoes
  'https://images.pexels.com/photos/6044651/pexels-photo-6044651.jpeg?auto=compress&cs=tinysrgb&w=600',
  //women watches
  'https://images.pexels.com/photos/393047/pexels-photo-393047.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
];

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      bloc: context.read<ProductBloc>()..add(FetchAllProductEvent()),
      builder: (context, state) {
        if (state is FetchAllProductsLoadingState) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is FetchAllProductsFailedState) {
          return Center(child: Text(state.errorMsg));
        }
        if (state is FetchAllProductsSuccessState) {
          final allProduct = state.allProductResponseModel;
          return GridView.builder(
              itemCount: allProduct.products?.length,
              // shrinkWrap: true,
              // physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  // maxCrossAxisExtent: 500,
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 10),
              itemBuilder: (context, index) {
                final productDetail = allProduct.products?[index];
                return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => ProductDetailsScreen(
                                productDetail: productDetail,
                              )));
                    },
                    child: customContainer(productDetail: productDetail));
              });
        }
        return const SizedBox();
      },
    );
  }
}

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: context.read<ProductBloc>()..add(FetchProductCategoryEvent()),
      builder: (context, state) {
        if (state is FetchProductCategoryLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is FetchProductCategoryFailed) {
          return Center(child: Text(state.errorMsg));
        }
        if (state is FetchProductCategorySuccess) {
          final category = state.categoryModel;
          log('${category.length}');
          return SingleChildScrollView(
            child: Column(
              children: List.generate(category.length, (index) {
                final categoryDetail = category[index];
                bool isEven = index % 2 == 0;
                return isEven
                    ? evenContainer(
                        categoryDetail: categoryDetail, imageIndex: index)
                    : oddContainer(
                        categoryDetail: categoryDetail, imageIndex: index);
              }),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}

Widget evenContainer(
    {required CategoryModel categoryDetail, required int imageIndex}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
            opacity: 0.54,
            colorFilter: const ColorFilter.mode(
                Color.fromARGB(255, 119, 148, 215), BlendMode.dstOver),
            image: NetworkImage(
              images[imageIndex],
              // width: 50,
              // height: 50,
            ),
            fit: BoxFit.cover),
        // color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              categoryDetail.name ?? '',
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget oddContainer(
    {required CategoryModel categoryDetail, required int imageIndex}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
            opacity: 0.54,
            colorFilter: const ColorFilter.mode(
                Color.fromARGB(255, 119, 148, 215), BlendMode.dstOver),
            image: NetworkImage(
              images[imageIndex],
              // width: 50,
              // height: 50,
            ),
            fit: BoxFit.cover),
        // color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              categoryDetail.name ?? '',
              textAlign: TextAlign.end,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    ),
  );
}
