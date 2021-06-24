import 'package:flutter/cupertino.dart';
import 'package:thrift_books/models/product.dart';

class Products with ChangeNotifier{
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
  List<Product> get products{
    return [..._products];
    //_products;
  }
}