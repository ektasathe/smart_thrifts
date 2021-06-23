import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_icons/flutter_icons.dart';

import 'package:thrift_books/widget/wishlist_empty.dart';

class WishlistScreen extends StatelessWidget {
  static const routeName = '/WishlistScreen';
  @override
  Widget build(Object context) {
    List wishlistList = [];
    return wishlistList.isEmpty
        ? Scaffold(body: WishlistEmpty())
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Scaffold(
              body: Container(),
            ),
          );
  }
}
