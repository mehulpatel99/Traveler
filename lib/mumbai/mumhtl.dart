import 'package:flutter/material.dart';

class mumhtl extends StatelessWidget {
  const mumhtl({super.key});
  static var img = [
    'https://pix8.agoda.net/hotelImages/43879/0/604250d16d9ebba5902f136c3075603b.jpg',
    'https://pix8.agoda.net/hotelImages/43879/0/604250d16d9ebba5902f136c3075603b.jpg',
    'https://pix8.agoda.net/hotelImages/405/4052/4052_15052917290028047972.jpg',
    'https://pix8.agoda.net/hotelImages/12440846/-1/cb99da8a926fc20e446e3093be4d3bba.jpg',
    'https://q-xx.bstatic.com/xdata/images/hotel/max1024x768/33034375.jpg',
  ];

  static var name = ['Oasis Hotel','Hayat Hotel','Pataang Hotel','Simba Hotel','Dev Hotel'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.home)),
        title: Text('Hotels'),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Card(
            elevation: 10,
            child: Column(
              children: [
                Image.asset('assets/image/${img[index]}',),
                Text(name[index],style: TextStyle(fontSize: 20),),
              ],
            ),
          );
        },
        itemCount: img.length,
      ),
    );
  }
}
