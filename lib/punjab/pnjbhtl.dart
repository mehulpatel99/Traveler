import 'package:flutter/material.dart';

class pnjbhtl extends StatelessWidget {
  const pnjbhtl({super.key});
  static var img = [
   'https://media.cntraveler.com/photos/5841fe31e186e2555afdd5ca/master/pass/alfond-inn-cr-courtesy.jpg',
   'https://st.hzcdn.com/fimgs/e92198fb02b12775_1688-w500-h400-b0-p0--mediterranean.jpg',
    'https://media.architecturaldigest.com/photos/57e42deafe422b3e29b7e790/master/pass/JW_LosCabos_2015_MainExterior.jpg',
    'https://momblogsociety.com/wp-content/uploads/2019/09/dfrnt-types-oof-hotels.jpg',
    'https://media.cntraveler.com/photos/5841fe31e186e2555afdd5ca/master/pass/alfond-inn-cr-courtesy.jpg'
  ];
  static var name = [
    'Nitya Hotel',
    'Priya Palace',
    'Mehul Risort',
    'Vishal Hotel',
    'Tashu Palace'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hotels'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.home)),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Card(
            child: Column(children: [
              Image.network(img[index]),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(name[index],style: TextStyle(fontSize: 20),),
              ),
            ]),
          );
        },
        itemCount: name.length,
      ),
    );
  }
}
