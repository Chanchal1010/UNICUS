import 'package:flutter/material.dart';


class MyGridView extends StatelessWidget {
  final List<String> imagePaths = [
    'assests/img1.jpg',
    'assests/img2.jpg',
    'assests/img3.jpg',
    'assests/img4.jpg',
    'assests/img5.jpg',
    'assests/img6.jpg',
    'assests/img7.jpg',
    'assests/img8.jpg',
    'assests/img9.jpg',
    'assests/img10.jpg',
    'assests/img11.jpg',
    'assests/img12.jpg',
    'assests/img13.jpg',
    'assests/img14.jpg',
    'assests/img15.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Language'),
        backgroundColor: Color.fromARGB(255, 105, 4, 88)
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        childAspectRatio: 0.8,
        children: List.generate(
          imagePaths.length,
          (index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 16.0),
                  Expanded(
                    child: Image.asset(
                      imagePaths[index],
                      width:180.0,
                      height:180.0,
                    ),
                  ),
                  SizedBox(height: 16.0),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}