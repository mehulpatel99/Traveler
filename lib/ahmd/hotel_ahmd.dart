import 'package:flutter/material.dart';

class hotel extends StatelessWidget {
  const hotel({super.key});

  static var name = ['Taj Hotel', 'A1 hotel','Sky Hotel','Prem Hotel','MP Hotel','Prisu Hotel'];
  // static var price = ['Price = 1000', 'Price = 500','Price = 800','Price = 900',];
  static var add = ['Thaltej(Ahamdabad)', 'Shela(Ahamdabad)','Sky(maninagar)','Prem(chankypuri)','Ahmd(cg road)','Ahmd(navrang)'];
  static var img = ['htlahmd.jpg', 'htlahmd.jpg','htl2ahmd.jpg','htl3ahmd.jpg','htl4.jpg','htl5.jpeg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Hotels'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: GridView.builder(
            itemCount: name.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 3),
            itemBuilder: (context, index) {
              return Container(
                height: 700,
                // width: 300,
                child: Card(
                  
                  // semanticContainer: true,
                  elevation: 10,
                  child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 150,
                        child: Image.asset(
                          'assets/image/${img[index]}',
                        ),
                      ),
                    
                      // SizedBox(
                      //   height: 10,
                      // ),
                      
                      Text(
                        name[index],
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      
                      // Text(
                      //   add[index],
                      //   style: TextStyle(fontWeight: FontWeight.w500),
                      // ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
