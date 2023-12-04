import 'package:flutter/material.dart';
import 'package:travellar/ahmd/hotel_ahmd.dart';

class ahmd extends StatelessWidget {
  const ahmd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
          title: Text('Ahamdabad'),
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: SingleChildScrollView(
        child: Column(
          
          children: [
            Container(
              
              height: 320,
              width: 550,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Image.asset('assets/image/ahmd.jpg',fit: BoxFit.fill,),
                   Hero(tag: 'background',
          child: Image.asset("assets/image/ahmd.jpg",),),
          
                  Text('Ahmedabad',style: TextStyle(fontSize: 20),)
                ],
              ),
            //   decoration: BoxDecoration(
            //       border: Border.all(width: 3, color: Colors.white)),
            ),
            
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                
                    width: 300,
                    child: Card(
                      elevation: 10,
                      child: Column(
                        children: [
                          SizedBox(
                              height: 220,
                              child: Image.asset('assets/image/kakriya2.jpg')),
                          Text(
                            'Kakariya Lake',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'Kankaria Lake is the second largest lake in Ahmedabad, Gujarat, India. It is located in the south-eastern part of the city, in the Maninagar area. '),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    child: Card(
                      elevation: 10,
                      child: Column(
                        children: [
                          SizedBox(
                              height: 220,
                              child:
                                  Image.asset('assets/image/atal_bridge.jpeg',fit: BoxFit.fitWidth,)),
                          Text(
                            'Atal Bridge',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'Atal Pedestrian Bridge is a pedestrian triangular truss bridge at Sabarmati Riverfront on Sabarmati river in Ahmedabad, Gujarat, India.'),
                          )
                        ],
                      ),
                    ),
                  ),
                   Container(
                    width: 300,
                    child: Card(
                      elevation: 10,
                      child: Column(
                        children: [
                          SizedBox(
                              height: 220,
                              child: Image.asset('assets/image/pldm.jpg',)),
                          Text(
                            'Palledium Mall',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'Palladium is located on the corner of corporate road in Prahlad Nagar area right opposite Vodafone house in Ahmedabad.'),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => hotel()));
              },
              child: Card(
                elevation: 10,
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
              
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // CircleAvatar(
                      //   radius: 20,
                      //   backgroundImage: AssetImage('assets/image/htl4.jpg'),
                      // ),
                      Image.asset('assets/image/htl4.jpg'),
                      Text(
                        ' Hotels ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(Icons.ads_click),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
