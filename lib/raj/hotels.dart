import 'package:flutter/material.dart';

class rajht extends StatelessWidget {
  final ImageProvider<Object>? img;
  final String? txt;
  // final String? tx;
  // final TextStyle? textStyle;
  rajht({
    required this.img,
    required this.txt,
    // required this.tx,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      child: Card(
        elevation: 10,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          SizedBox(
              height: 150,
              // width: 300,
              child: Image(image: img ?? NetworkImage(""))),
          Text(
            txt ?? '',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          // Text(
          //   tx ?? '',
          // )
        ]),
      ),
    );
  }
}

class rajhtl extends StatelessWidget {
  const rajhtl({super.key});
  // static var ig = ['travel.jpg', 'udaipur.jpg'];
  static var ig = [
    'https://images.pexels.com/photos/2844474/pexels-photo-2844474.jpeg',
    'https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg',
    'https://images.pexels.com/photos/13581811/pexels-photo-13581811.jpeg',
    'https://images.pexels.com/photos/14614670/pexels-photo-14614670.jpeg',
    'https://images.pexels.com/photos/2972890/pexels-photo-2972890.jpeg',
  ];
  static var name = [
    'Della Hotel',
    'Crown Hotel',
    'MP Hotel',
    'MS Hotel',
    'Raj Hotel'
  ];
  static var add = ['Mewar', 'Marvar', 'Vagad', 'Udaipur', 'MT Abu'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Raj Hotels'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
        itemBuilder: (context, index) {
          return Card(
              child: rajht(
            img: NetworkImage(ig[index]),
            txt: name[index],
            // tx: add[index],
          ));
          
        },
        itemCount: ig.length,
      ),
    );
  }
}
