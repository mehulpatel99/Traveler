import 'package:flutter/material.dart';

class suratht extends StatelessWidget {
  final ImageProvider<Object>? img;
  final String? txt;
  final String? tx;
  // final TextStyle? textStyle;
  suratht({
    required this.img,
    required this.txt,
    required this.tx,
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
          Text(
            tx ?? '',
          )
        ]),
      ),
    );
  }
}

class surathtl extends StatelessWidget {
  const surathtl({super.key});
  // static var ig = ['travel.jpg', 'udaipur.jpg'];
  static var ig = [
   'https://q-xx.bstatic.com/xdata/images/hotel/max1024x768/222037473.jpg',
   'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/48/4e/24/evening-is-enjoyable.jpg',
   'https://1.bp.blogspot.com/-48ESDrDKLU4/XjM7PsfMoSI/AAAAAAAAHow/wP6pyyKYEdMnZPfuwZ_3LoQEJ8sVkL1fgCLcBGAsYHQ/s1600/surat-marriott-hotel.jpg',
   'https://cache.marriott.com/marriottassets/marriott/STVCY/stvcy-exterior-0011-hor-feat.jpg',
   'https://q-xx.bstatic.com/xdata/images/hotel/max1024x768/92483867.jpg'
  ];
  static var name = [
    'Della Hotel',
    'Crown Hotel',
    'MP Hotel',
    'MS Hotel',
    'Raj Hotel'
  ];
 static var add = ['Surat','Surat','Surat','Surat','Surat'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Raj Hotels'),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return suratht(
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
