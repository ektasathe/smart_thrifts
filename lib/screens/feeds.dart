import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:thrift_books/models/product.dart';
import 'package:thrift_books/widget/feeds_products.dart';

// ignore: must_be_immutable
class FeedsScreen extends StatelessWidget {
  List<Product> _products = [
    Product(
        id: 'Samsung',
        title: 'Samsung galaxy 200',
        description:
            'this phone is briliant to use for sny age group ..it is from korea and love lee min ho',
        price: 50.99,
        imageUrl:
            'https://cdn1.vectorstock.com/i/thumb-large/62/60/default-avatar-photo-placeholder-profile-image-vector-21666260.jpg',
        brand: 'Samsung',
        productCategoryName: 'Phones',
        quantity: 65,
        isPopular: false),
    Product(
        id: 'Nokia',
        title: 'Samsung galaxy 200',
        description:
            'this phone is briliant to use for sny age group ..it is from korea and love lee min ho',
        price: 50.99,
        imageUrl:
            'https://cdn1.vectorstock.com/i/thumb-large/62/60/default-avatar-photo-placeholder-profile-image-vector-21666260.jpg',
        brand: 'Nokia',
        productCategoryName: 'Phones',
        quantity: 65,
        isPopular: false),
    Product(
        id: 'iPhone7s',
        title: 'Samsung galaxy 200',
        description:
            'this phone is briliant to use for sny age group ..it is from korea and love lee min ho',
        price: 50.99,
        imageUrl:
            'https://cdn1.vectorstock.com/i/thumb-large/62/60/default-avatar-photo-placeholder-profile-image-vector-21666260.jpg',
        brand: 'Samsung',
        productCategoryName: 'Phones',
        quantity: 65,
        isPopular: false),
    Product(
        id: 'Micromax',
        title: 'Samsung galaxy 200',
        description:
            'this phone is briliant to use for sny age group ..it is from korea and love lee min ho',
        price: 50.99,
        imageUrl:
            'https://cdn1.vectorstock.com/i/thumb-large/62/60/default-avatar-photo-placeholder-profile-image-vector-21666260.jpg',
        brand: 'Samsung',
        productCategoryName: 'Phones',
        quantity: 65,
        isPopular: false),
    Product(
        id: 'Redmi',
        title: 'Samsung galaxy 200',
        description:
            'this phone is briliant to use for sny age group ..it is from korea and love lee min ho',
        price: 50.99,
        imageUrl:
            'https://cdn1.vectorstock.com/i/thumb-large/62/60/default-avatar-photo-placeholder-profile-image-vector-21666260.jpg',
        brand: 'Samsung',
        productCategoryName: 'Phones',
        quantity: 65,
        isPopular: false),
    Product(
        id: 'Oppo',
        title: 'Samsung galaxy 200',
        description:
            'this phone is briliant to use for sny age group ..it is from korea and love lee min ho',
        price: 50.99,
        imageUrl:
            'https://cdn1.vectorstock.com/i/thumb-large/62/60/default-avatar-photo-placeholder-profile-image-vector-21666260.jpg',
        brand: 'Samsung',
        productCategoryName: 'Phones',
        quantity: 65,
        isPopular: false),
    Product(
        id: 'Vivo',
        title: 'Samsung galaxy 200',
        description:
            'this phone is briliant to use for sny age group ..it is from korea and love lee min ho',
        price: 50.99,
        imageUrl:
            'https://cdn1.vectorstock.com/i/thumb-large/62/60/default-avatar-photo-placeholder-profile-image-vector-21666260.jpg',
        brand: 'Samsung',
        productCategoryName: 'Phones',
        quantity: 65,
        isPopular: false),
    Product(
        id: 'Samsung',
        title: 'Samsung galaxy 200',
        description:
            'this phone is briliant to use for sny age group ..it is from korea and love lee min ho',
        price: 50.99,
        imageUrl:
            'https://cdn1.vectorstock.com/i/thumb-large/62/60/default-avatar-photo-placeholder-profile-image-vector-21666260.jpg',
        brand: 'Samsung',
        productCategoryName: 'Phones',
        quantity: 65,
        isPopular: false),
  ];
  static const routeName = '/feeds';
  @override
  Widget build(Object context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
        body: GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 240 / 420,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      children: List.generate(_products.length, (index) {
        return FeedProducts(
          id: _products[index].id,
          description: _products[index].description,
          price: _products[index].price,
          imageUrl: _products[index].imageUrl,
          quantity: _products[index].quantity,
          isFavorite: _products[index].isFavorite,
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
