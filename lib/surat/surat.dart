import 'package:flutter/material.dart';
import 'package:travellar/surat/hotels.dart';

class srt extends StatelessWidget {
  final ImageProvider<Object> img;
  final String? txt;
  final String? tt;

  srt({
    required this.img,
    required this.txt,
    required this.tt,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      child: Card(
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: img ?? NetworkImage('')),
            Text(
              txt ?? '',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(tt ?? ''),
            ),
          ],
        ),
      ),
    );
  }
}

class surat extends StatefulWidget {
  const surat({super.key});

  @override
  State<surat> createState() => _suratState();
}

class _suratState extends State<surat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Surat'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.home)),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            child: Hero(
                tag: 'suratground',
                child: Image.asset('assets/image/surat.jpg')),
          ),
          Text('welcome to surat'),
          SizedBox(height: 30,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                srt(
                    img: NetworkImage(
                        'https://cdn.s3waas.gov.in/s38d317bdcf4aafcfc22149d77babee96d/uploads/2017/03/2018080247-1024x573.jpg'),
                    txt: 'Gopi Talav',
                    tt: 'Surat Municipal Institute of Medical Education and Research '),
                srt(
                    img: NetworkImage(
                        'https://centers.iskcondesiretree.com/wp-content/uploads/2019/04/12898236_10156727415270553_6850820252904975583_o-1024x674.jpg'),
                    txt: 'Iskon temple',
                    tt: 'ISKCON Surat is a Tourist attraction located in Surat . '),
                srt(
                    img: NetworkImage(
                        'https://www.gujarattourism.com/content/dam/gujrattourism/images/flora--fauna/sneh-rashmi-botanical-garden/gallery/Sneh-Rashmi-Botanical-Garden-(12).jpg'),
                    txt: 'Sneh Rashmi Botanical Garden',
                    tt: 'Surat'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              height: 50,
              width: 200,
              child: OutlinedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => surathtl())));
                  },
                  icon: Icon(Icons.touch_app_outlined),
                  label: Text('Hotels')),
            ),
          )
        ],
      ),
    );
  }
}
