import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:thrift_books/models/product.dart';
import 'package:thrift_books/provider/products.dart';
import 'package:thrift_books/widget/feeds_products.dart';

// ignore: must_be_immutable
class FeedsScreen extends StatelessWidget {

  static const routeName = '/feeds';
  @override
  Widget build(Object context) {
    // ignore: todo
    // TODO: implement build
    final productsProvider = Provider.of<Products>(context);
    List<Product> productsList= productsProvider.products;
    return Scaffold(
        body: GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 240 / 420,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      children: List.generate(productsList.length, (index) {
        return ChangeNotifierProvider.value(
          value: productsList[index],
          child: FeedProducts(

          ),
        );
      }),
    )
        //GridView.count(crossAxisCount: 2,
        //childAspectRatio: 240/290,
        //crossAxisSpacing: 8,
        // mainAxisSpacing: 8,
        //children: List.generate(100,(index){
        //  return FeedProducts();
        // }),
        // )

        );
  }
}
