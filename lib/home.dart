import 'package:flutter/material.dart';
import 'package:travellar/ahmd/ahmd.dart';
import 'package:travellar/delhi/delhi.dart';
import 'package:travellar/mumbai/mumb.dart';
import 'package:travellar/punjab/punjab.dart';
import 'package:travellar/raj/raj.dart';
import 'package:travellar/surat/surat.dart';

class home extends StatefulWidget {
  final String? name;
  // var email;
  home({
    @required this.name,
  });
  // const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Travelar'),
        leading: Icon(Icons.travel_explore),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 320,
              width: 550,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/image/travel.jpg',
                    ),
                    fit: BoxFit.fill,
                  ),
                  border: Border.all(
                    width: 2,
                  )),
              child: Column(
                children: [
                  SizedBox(
                    height: 260,
                  ),
                  Row(
                    children: [
                      Text(
                        'Hey  ${widget.name} ',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ahmd()));
                  },
                  child: Card(
                    elevation: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // SizedBox(
                        //     height: 200,
                        //     width: 180,
                        //     child: Image.asset('assets/image/ahmd.jpg')),
                        Container(
                          // height: 500,
                          // width: 400,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ahmd()));
                            },
                            child: Hero(
                              tag: 'background',
                              child: Image.asset(
                                'assets/image/ahmd.jpg',
                                height: 200,
                                width: 180,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Ahmedabad',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => raj()));
                  },
                  child: Card(
                    elevation: 20,
                    child: Column(
                      children: [
                        SizedBox(
                            height: 200,
                            width: 180,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => raj()));
                              },
                              child: Hero(
                                  tag: 'ground',
                                  child: Image.asset('assets/image/raj2.jpeg')),
                            )),
                        Text(
                          'Rajasthan',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Card(
                    elevation: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 200,
                            width: 180,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => mumb())));
                              },
                              child: Hero(
                                  tag: 'mumhero',
                                  child: Image.asset('assets/image/mumb.jpg')),
                            )),
                        Text(
                          'Mumbai',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Card(
                    elevation: 20,
                    child: Column(
                      children: [
                        SizedBox(
                            height: 200,
                            width: 180,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => punjab()));
                              },
                              child: Hero(
                                  tag: 'pnjbground',
                                  child:
                                      Image.asset('assets/image/punjab.jpg')),
                            )),
                        Text(
                          'Punjab',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Card(
                    elevation: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 200,
                            width: 180,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => surat())));
                              },
                              child: Hero(
                                  tag: 'suratground',
                                  child: Image.asset('assets/image/surat.jpg')),
                            )),
                        Text(
                          'Surat',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Card(
                    elevation: 20,
                    child: Column(
                      children: [
                        SizedBox(
                            height: 200,
                            width: 180,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => delhi())));
                              },
                              child: Hero(
                                  tag: 'delhiground',
                                  child: Image.asset('assets/image/delhi.jpg')),
                            )),
                        Text(
                          'Delhi',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Copyright by Sunil'),
            ),
          ],
        ),
      ),
    );
  }
}
