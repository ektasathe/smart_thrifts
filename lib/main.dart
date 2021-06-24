import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thrift_books/consts/theme_data.dart';
import 'package:thrift_books/inner_screens/product_details.dart';
import 'package:thrift_books/provider/dark_theme_provider.dart';
import 'package:thrift_books/provider/products.dart';
import 'package:thrift_books/screens/bottom_bar.dart';
import 'package:thrift_books/screens/cart.dart';
import 'package:thrift_books/screens/feeds.dart';
import 'package:thrift_books/screens/wishlist.dart';

import 'inner_screens/brands_navigation_rail copy.dart';

// ignore: must_be_immutable
void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreferences.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) {
            return themeChangeProvider;
          }),
          ChangeNotifierProvider(create: (_) =>
            Products(),
          )
        ],
        child:
            Consumer<DarkThemeProvider>(builder: (context, themeData, child) {
          return MaterialApp(
              title: 'Flutter Demo',
              theme: Styles.themeData(themeChangeProvider.darkTheme, context),
              home: BottomBarScreen(),
              // initialRoute: "/",
              routes: {
                //   '/': (ctx) => LandingPage(),
                BrandNavigationRailScreen.routeName: (ctx) =>
                    BrandNavigationRailScreen(),
                CartScreen.routeName: (ctx) => CartScreen(),
                FeedsScreen.routeName: (ctx) => FeedsScreen(),
                WishlistScreen.routeName: (ctx) => WishlistScreen(),
                ProductDetails.routeName: (ctx) => ProductDetails(),
              });
        }));
  }
}
