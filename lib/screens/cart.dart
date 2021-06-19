import 'package:flutter/material.dart';
import 'package:thrift_books/screens/cart_empty.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Scaffold(
      body: CartEmpty(),
    );
  }
}
