import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryWidget extends StatelessWidget {
  CategoryWidget({Key key, this.index}) : super(key: key);
  final int index;
  List<Map<String, Object>> categories = [
    {
      'categoryName': 'Engineering',
      'categoryImagesPath': 'android/assets/images/eng.jpg',
    },
    {
      'categoryName': 'Law',
      'categoryImagesPath': 'android/assets/images/lawyer.jpg',
    },
    {
      'categoryName': 'Science',
      'categoryImagesPath': 'android/assets/images/scientist.jpg',
    },
    {
      'categoryName': 'Police',
      'categoryImagesPath': 'android/assets/images/police.jpg',
    },
    {
      'categoryName': 'MBA',
      'categoryImagesPath': 'android/assets/images/eng.jpg',
    },
    {
      'categoryName': 'MCA',
      'categoryImagesPath': 'android/assets/images/lawyer.jpg',
    },
    {
      'categoryName': 'BBA',
      'categoryImagesPath': 'android/assets/images/scientist.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(categories[index]['categoryImagesPath']),
                fit: BoxFit.cover),
          ),
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: 150,
          height: 150,
        ),
        Positioned(
          bottom: 0,
          left: 10,
          right: 10,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            color: Theme.of(context).backgroundColor,
            child: Text(
              categories[index]['categoryName'],
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                // ignore: deprecated_member_use
                color: Theme.of(context).textSelectionColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
