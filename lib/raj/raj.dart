import 'package:flutter/material.dart';
import 'package:travellar/raj/hotels.dart';

class card5 extends StatelessWidget {
  final ImageProvider<Object>? img;
  final String? txt;
  final String? tx;
  // final TextStyle? textStyle;
  card5({
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
              child: Image(image: img ?? AssetImage(""))),
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

class raj extends StatelessWidget {
  const raj({super.key});
  // static var nm = ['Udaipur', 'Jaisalmer'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Rajasthan'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.white,
            height: 300,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 250,
                  width: 600,
                  child: Hero(tag: 'ground',
                    child: Image.asset(
                      'assets/image/raj2.jpeg',
                    ),
                  ),
                ),
                Text(
                  'Rajasthan',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                card5(
                    img: AssetImage('assets/image/udaipur.jpg'),
                    txt: 'Mewar(Udaipur)',
                    tx: 'The Kingdom of Mewar, sometimes known as Udaipur State... '),
                card5(
                    img: AssetImage('assets/image/marvar.jpg'),
                    txt: 'Marwar(jodhpur)',
                    tx: 'Marwar is a sandy plain lying northwest of the Aravalli Range..'),
                card5(
                    img: AssetImage('assets/image/vagad.jpg'),
                    txt: "Vagad(Banswara)",
                    tx: 'Banswara ("the bamboo city") was a Rajput feudatory state in Rajputana in British India. '),
                card5(
                    img: AssetImage('assets/image/mtabu.jpg'),
                    txt: 'Mount Abu',
                    tx: 'Known as “Arbudaranya” or “the forest of Arbhuda” in the Puranic Age..')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: 200,
            child: OutlinedButton.icon(
              
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => rajhtl()));
                },
                icon: Icon(Icons.touch_app),
                label: Text('Hotels')),
          )
        ],
      ),
    );
  }
}
