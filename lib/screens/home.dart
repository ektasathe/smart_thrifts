import 'package:backdrop/app_bar.dart';
import 'package:backdrop/button.dart';
import 'package:backdrop/scaffold.dart';
import 'package:backdrop/sub_header.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:thrift_books/consts/colors.dart';

class HomeScreen extends StatelessWidget {
  List _carouselImages = [
    'android/assets/images/b1.jpg',
    'android/assets/images/b2.jpg',
    'android/assets/images/b3.jpg',
    'android/assets/images/b4.jpg'
  ];
  @override
  Widget build(Object context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: BackdropScaffold(
          headerHeight: MediaQuery.of(context).size.height * 0.25,
          appBar: BackdropAppBar(
            title: Text("Home"),
            leading: BackdropToggleButton(icon: AnimatedIcons.home_menu),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                ColorsConsts.starterColor,
                ColorsConsts.endColor
              ])),
            ),
            actions: <Widget>[
              IconButton(
                iconSize: 15,
                padding: const EdgeInsets.all(10),
                icon: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 13,
                      backgroundImage: NetworkImage(
                          'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.clipartkey.com%2Fmpngs%2Fm%2F152-1520367_user-profile-default-image-png-clipart-png-download.png&imgrefurl=https%3A%2F%2Fwww.clipartkey.com%2Fview%2FxmmbTT_user-profile-default-image-png-clipart-png-download%2F&tbnid=LCzZi7t2gezOPM&vet=12ahUKEwikyaKLxKDxAhVEXCsKHWp4Bw8QMygAegUIARC7AQ..i&docid=WL3gY9si39S9KM&w=900&h=785&q=default%20profile%20picture%20png&ved=2ahUKEwikyaKLxKDxAhVEXCsKHWp4Bw8QMygAegUIARC7AQ'),
                    )),
                onPressed: () {},
              )
            ],
          ),
          backLayer: Center(
            child: Text("Back Layer"),
          ),
          frontLayer: Container(
            height: 190.0,
            width: double.infinity,
            child: Carousel(
              boxFit: BoxFit.fill,
              autoplay: true,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(milliseconds: 1000),
              dotSize: 5.0,
              dotIncreasedColor: Colors.purple,
              dotBgColor: Colors.black.withOpacity(0.2),
              dotPosition: DotPosition.bottomCenter,
              showIndicator: true,
              indicatorBgPadding: 7.0,
              images: [
                ExactAssetImage(_carouselImages[0]),
                ExactAssetImage(_carouselImages[1]),
                ExactAssetImage(_carouselImages[2]),
                ExactAssetImage(_carouselImages[3]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
