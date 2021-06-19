import 'package:flutter/material.dart';
import 'package:thrift_books/screens/cart_empty.dart';

import 'cart_empty.dart';
import 'cart_full.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(Object context) {
    List products = [];
    return Scaffold(
      body: products.isEmpty ? CartEmpty() : CartFull(),
    );
  }
}
