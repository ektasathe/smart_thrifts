import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thrift_books/consts/theme_data.dart';
import 'package:thrift_books/inner_screens/product_details.dart';
import 'package:thrift_books/provider/dark_theme_provider.dart';
import 'package:thrift_books/provider/favs_provider.dart';
import 'package:thrift_books/provider/products.dart';
import 'package:thrift_books/screens/auth/login.dart';
import 'package:thrift_books/screens/auth/sign_up.dart';
// ignore: unused_import
import 'package:thrift_books/screens/bottom_bar.dart';
import 'package:thrift_books/screens/cart.dart';
import 'package:thrift_books/screens/feeds.dart';
import 'package:thrift_books/screens/landing_page.dart';
import 'package:thrift_books/screens/main_screen.dart';
import 'package:thrift_books/screens/wishlist.dart';

import 'inner_screens/brands_navigation_rail.dart';
import 'inner_screens/categories_feeds.dart';
import 'provider/cart_provider.dart';

//import 'inner_screens/brands_navigation_rail copy.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
          ChangeNotifierProvider(
            create: (_) => Products(),
          ),
          ChangeNotifierProvider(
            create: (_) => CartProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => FavsProvider(),
          ),
        ],
        child:
            Consumer<DarkThemeProvider>(builder: (context, themeData, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: Styles.themeData(themeChangeProvider.darkTheme, context),
            home: LandingPage(),
            //initialRoute: '/',
            routes: {
              //   '/': (ctx) => LandingPage(),
              BrandNavigationRailScreen.routeName: (ctx) =>
                  BrandNavigationRailScreen(),
              CartScreen.routeName: (ctx) => CartScreen(),
              Feeds.routeName: (ctx) => Feeds(),
              WishlistScreen.routeName: (ctx) => WishlistScreen(),
              ProductDetails.routeName: (ctx) => ProductDetails(),
              CategoriesFeedsScreen.routeName: (ctx) => CategoriesFeedsScreen(),
              LoginScreen.routeName: (ctx) => LoginScreen(),
              SignUpScreen.routeName: (ctx) => SignUpScreen(),
              BottomBarScreen.routeName: (ctx) => BottomBarScreen(),
            },
          );
        }));
  }
}
