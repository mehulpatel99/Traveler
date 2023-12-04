import 'package:flutter/material.dart';
import 'package:travellar/punjab/pnjbhtl.dart';

class pnj extends StatelessWidget {
  final ImageProvider<Object>? img;
  final String? txt;
  final String? tt;
  pnj({required this.img, required this.txt, required this.tt});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 300,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: img ?? NetworkImage('url')),
            Text(
              txt ?? '',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Text(tt ?? ''),
          ],
        ),
      ),
    );
  }
}

class punjab extends StatefulWidget {
  const punjab({super.key});

  @override
  State<punjab> createState() => _punjabState();
}

class _punjabState extends State<punjab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.home)),
        title: Text('Punjab'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              color: Colors.white,
              width: 600,
              child: Hero(
                  tag: 'pnjbground',
                  child: Image.asset(
                    'assets/image/punjab.jpg',
                  )),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  pnj(
                    img: NetworkImage(
                        'https://www.adotrip.com/public/images/areas/5c3eb9804f9ee-Rock%20Garden%20Place%20to%20visit.jpg'),
                    txt: 'Rock Garden of Chandigarh',
                    tt: 'The Rock Garden of Chandigard is a sculpture garden for rock enthusiasts in Chandigarh, India.',
                  ),
                  pnj(
                      img: NetworkImage(
                          'https://www.adotrip.com/public/images/areas/5c74e5be3ff40-Pinjore%20Gardens%20Place%20to%20visit.jpg'),
                      txt: 'Pinjore Gardens',
                      tt: 'Yadavindra Gardens, also known as Pinjore Gardens, is a historic 17th century garden located in Pinjore city of Panchkula district in the Indian state of Haryana.'),
                  pnj(
                      img: NetworkImage(
                          'https://chandigarh.tourismindia.co.in/images/tourist-places/sukhna-wildlife-sanctuary-chandigarh/sukhna-wildlife-sanctuary-chandigarh-india-tourism-history.jpg'),
                      txt: 'Sukhna Wildlife Sanctuary',
                      tt: 'Sukhna Wildlife Sanctuary is located in Shivalik foothills of Chandigarh city, near Sukhna Lake. It was declared a wildlife sanctuary in 1998. Closed during rainy season.'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => pnjbhtl())));
                    },
                    icon: Icon(Icons.touch_app_outlined),
                    label: Text('Hotels')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
