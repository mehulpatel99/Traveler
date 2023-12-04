import 'package:flutter/material.dart';
import 'package:travellar/mumbai/mumhtl.dart';

class mumbc extends StatelessWidget {
  final ImageProvider<Object>? img;
  final String? txt;
  final String? tx;
  // final TextStyle? textStyle;
  mumbc({
    required this.img,
    required this.txt,
    required this.tx,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 300,
      child: Card(
        elevation: 10,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          SizedBox(
              height: 200,
              // width: 300,
              child: Image(image: img ?? NetworkImage(""))),
          Text(
            txt ?? '',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              tx ?? '',
            ),
          )
        ]),
      ),
    );
  }
}

class mumb extends StatefulWidget {
  const mumb({super.key});

  @override
  State<mumb> createState() => _mumbState();
}

class _mumbState extends State<mumb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.home_filled)),
        title: Text('Mumbai'),
      ),
      body: Column(
        children: [
          Container(
            // height: 300,
            width: 600,
            color: Colors.white,
            child: Hero(
                tag: 'mumhero',
                child: SizedBox(
                    height: 320, child: Image.asset('assets/image/mumb.jpg'))),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                mumbc(
                    img: NetworkImage(
                        'https://www.fabhotels.com/blog/wp-content/uploads/2018/09/Gateway-of-India-1.jpg'),
                    txt: 'GateWay of India',
                    tx: 'The Gateway of India is an arch-monument completed in 1924 on the waterfront of Mumbai (Bombay), India.'),
                mumbc(
                    img: NetworkImage(
                        'https://cdn.dnaindia.com/sites/default/files/styles/full/public/2018/10/02/738430-bandra-worli-sea-link-04.jpg'),
                    txt: 'BandraWorli Sea Link',
                    tx: 'The Bandra–Worli Sea Link is a 5.6 km long, 8-lane wide bridge that links Bandra in the Western Suburbs of Mumbai with Worli in South Mumbai.'),
                mumbc(
                    img: NetworkImage(
                        'https://image.arrivalguides.com/1230x800/14/2cae97c6b8911dc47f395d199a34f0cc.jpg'),
                    txt: 'Chhatrapati Shivaji Maharaj Terminus',
                    tx: 'Chhatrapati Shivaji Terminus, is a historic terminal train station and UNESCO World Heritage Site in Mumbai, Maharashtra, India.')
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
                        MaterialPageRoute(builder: ((context) => mumhtl())));
                  },
                  icon: Icon(Icons.touch_app_outlined),
                  label: Text('Hotels')),
            ),
          ),
        ],
      ),
    );
  }
}
