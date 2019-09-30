import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT5aohv_x0BIMhZPy8uZiGvlCtoxGfnQEs7ZhZHm_gNiHi3pXSG',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTO0t-2epJ5WbPPwKgXv4w5oj0ytQvBq4kzAyIq8-i_HRAvTUlF',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQUCGTO7od-ARZ39KGRH0f9A9rGnuCbpayD6L24vFUCMlFZpTro'
  ];
  PageController pageController;
  @override
  void initState() {
    super.initState();
     pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
          controller: pageController,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return AnimatedBuilder(
              animation: pageController,
              builder: (context, widget) {
                double value = 1;
                if (pageController.position.haveDimensions) {
                  value = pageController.page - index;
                  value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
                }
                return Column(
                  children: <Widget>[
                    Container(height: 30),
                    Stack(
                      children: <Widget>[
                        SizedBox(
                          height: Curves.easeInOut.transform(value) * 300,
                          width: Curves.easeInOut.transform(value) * 370,
                          child: widget,
                        ),
                        SizedBox(
                          height: Curves.easeInOut.transform(value) * 300,
                          width: Curves.easeInOut.transform(value) * 370,
                          child: Opacity(
                            opacity: 0.5,
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: 210, bottom: 10, right: 10, left: 10),
                              color: Colors.black,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('description',style: TextStyle(color: Colors.white),),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                );
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Image.network(images[index], fit: BoxFit.cover),
              ),
            );
          });
  }
}