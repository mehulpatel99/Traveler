import 'package:flutter/material.dart';
import 'package:travellar/delhi/dlhhtl.dart';

class dlh extends StatelessWidget {
  final ImageProvider<Object> img;
  final String? txt;
  final String? tt;

  dlh({
    required this.img,
    required this.txt,
    required this.tt,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
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

class delhi extends StatelessWidget {
  const delhi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Delhi'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.home),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 320,
            width: 600,
            color: Colors.white,
            child: Image.asset('assets/image/delhi.jpg'),
          ),
          SizedBox(height: 20,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                dlh(
                    img: NetworkImage(
                        'https://th.bing.com/th/id/R.f4be9f95ffcb01f7031376bfe831e464?rik=F%2fw4xt3uem3zfg&riu=http%3a%2f%2f1.bp.blogspot.com%2f-_A_hPMf6UXA%2fUPlIaFedKJI%2fAAAAAAAAALc%2f1ot1wZWv1Tg%2fs1600%2fQutub%2bMinar.jpg'),
                    txt: 'Qutub Minar',
                    tt: 'The Qutb Minar, also spelled Qutub Minar and Qutab Minar, is a minaret and "victory tower" that forms part of the Qutb complex, '),
                dlh(
                    img: NetworkImage(
                        'https://img.traveltriangle.com/blog/wp-content/uploads/2019/05/Jantar-Mantar-cover-img.jpg'),
                    txt: 'Jantar Mantar',
                    tt: 'A Jantar Mantar is an assembly of stone-built astronomical instruments, designed to be used with the naked eye.'),
                dlh(
                    img: NetworkImage(
                        'https://th.bing.com/th/id/R.5cad67ea9bebbd35dada420324e4ae32?rik=jQIDvwAWfn0nSA&riu=http%3a%2f%2fphoto.andinadigital.com%2fgallery3%2fvar%2falbums%2fChallenges-of-man_1366x768%2fLotusTemple_EN-US9977778940_1366x768.jpg'),
                    txt: 'Bahai(Lotus)Temple',
                    tt: 'The Lotus Temple, located in New Delhi, India, is a Baháí House of Worship that was dedicated in December 1986.')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 50,
              width: 200,
              child: OutlinedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => delhihtl())));
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
