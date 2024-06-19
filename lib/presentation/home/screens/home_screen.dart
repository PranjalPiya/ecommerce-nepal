import 'package:ecommerce_nepal/core/helper/dio_helper.dart';
import 'package:ecommerce_nepal/presentation/home/bloc/product_bloc.dart';
import 'package:ecommerce_nepal/presentation/home/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              homeHeadSection(),
              const TabBar(
                  // labelColor: defaultColor,
                  labelStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  indicatorPadding: EdgeInsets.symmetric(horizontal: 50),
                  // unselectedLabelColor: bgColor,
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  // indicatorColor: defaultColor,

                  tabs: [
                    Tab(
                      child: Text('Home'),
                    ),
                    Tab(
                      child: Text('Category'),
                    ),
                  ]),
              const SizedBox(height: 10),
              Expanded(
                child: TabBarView(children: [
                  BlocBuilder<ProductBloc, ProductState>(
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
                            shrinkWrap: true,
                            // physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    // maxCrossAxisExtent: 500,
                                    crossAxisCount: 2,
                                    childAspectRatio: 0.75,
                                    crossAxisSpacing: 10),
                            itemBuilder: (context, index) {
                              final productDetail = allProduct.products?[index];
                              return customContainer(
                                  productDetail: productDetail);
                            });
                      }
                      return const SizedBox();
                    },
                  ),
                  //
                  Container(
                    color: Colors.green,
                  )
                ]),
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}

Widget homeHeadSection() {
  return const Padding(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, Jonathan',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Let\'s go shopping',
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.notifications_outlined),
          ],
        )
      ],
    ),
  );
}
