import 'package:flutter/material.dart';

class delhiht extends StatelessWidget {
  final ImageProvider<Object>? img;
  final String? txt;
  final String? tx;
  // final TextStyle? textStyle;
  delhiht({
    required this.img,
    required this.txt,
    required this.tx,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
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
          Text(
            tx ?? '',
          )
        ]),
      ),
    );
  }
}

class delhihtl extends StatelessWidget {
  const delhihtl({super.key});
  // static var ig = ['travel.jpg', 'udaipur.jpg'];
  static var ig = [
   'https://cf.bstatic.com/xdata/images/hotel/max1280x900/27203214.jpg',
   'https://cf.bstatic.com/xdata/images/hotel/max1280x900/221787146.jpg',
   'https://cf.bstatic.com/xdata/images/hotel/max1280x900/218029049.jpg',
   'https://cf.bstatic.com/xdata/images/hotel/max1280x900/103738788.jpg',
   'https://cf.bstatic.com/xdata/images/hotel/max1280x900/464003895.jpg'
  ];
  static var name = [
    'ibis Hotel',
    'Blue pearl Hotel',
    'Nitya Hotel',
    'krishna Hotel',
    'prem Hotel'
  ];
 static var add = ['IGI Aerocity','Paharganj','Aarakashan road','New delhi','delhi'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delhi Hotels'),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return delhiht(
            img: NetworkImage(ig[index]),
            txt: name[index],
            tx: add[index],
          );
        },
        itemCount: ig.length,
      ),
    );
  }
}
