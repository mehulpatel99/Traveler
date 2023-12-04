import 'package:flutter/material.dart';
import 'package:travellar/Login.dart';
import 'package:travellar/home.dart';

class spls extends StatefulWidget {
  const spls({super.key});

  @override
  State<spls> createState() => _splsState();
}

class _splsState extends State<spls> {
  @override
  void initState() {
    super.initState();
    send();
  }

  send() async {
    await Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: ((context) => login())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // child: Image.asset('assets/image/spls2.jpg',fit: BoxFit.fill,),
        child: Image.network('https://i.pinimg.com/736x/a0/bb/d6/a0bbd6a781404ef8e23a5e9995a055a2.jpg',fit: BoxFit.fill,),
      ),
    );
  }
}
