import 'package:flutter/material.dart';
import 'package:travellar/Database/model.dart';
import 'package:travellar/Database/service.dart';

class mydb extends StatefulWidget {
  const mydb({super.key});

  @override
  State<mydb> createState() => _mydbState();
}

TextEditingController _name = TextEditingController();
TextEditingController _email = TextEditingController();
TextEditingController _pass = TextEditingController();
String? result = "";
class _mydbState extends State<mydb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataBase'),
      ),
      body: Center(
        child: Container(
            height: 300,
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _name,
                  decoration: InputDecoration(
                      hintText: 'Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                TextField(
                  controller: _email,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                TextField(
                  controller: _pass,
                  decoration: InputDecoration(
                      hintText: 'Pass',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() async {
                        if (_name.text != null &&
                            _email.text != null &&
                            _pass.text != null) {
                          var Service = UserService();
                          var Model = UserModel();

                          Model.name = _name.text;
                          Model.email = _email.text;
                          Model.pass = _pass.text;
                           result = await Service.saveUser(Model);
                          print('result = $result');
                          print(result);
                        }
                      });
                    },
                    
                    child: Text('Submit')),
                    Text("$result"),
              ],
            )),
      ),
    );
  }
}
