import 'package:flutter/material.dart';
import 'package:travellar/home.dart';

class login extends StatefulWidget {
  const login({super.key});
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController _nameController = TextEditingController();
  String name = 'mehul';
  bool validate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: Color(Colors.transparent),
        title: Text('Login'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/image/login.png',
                ),
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Traveller',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                  ),
                  Text(
                    'App',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 350,
                width: 350,
                // color: Colors.grey[300],
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[300]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: 300,
                        child: TextField(
                          controller: _nameController,
                          decoration: InputDecoration(
                              errorText: validate ? 'value cant empty' : null,
                              prefixIcon: Icon(Icons.person),
                              hintText: 'Enter username',
                              label: Text('Username'),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sign in',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              // validate = _nameController.text.isEmpty;
                              // if (_nameController == 'mehul') {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => home(
                                          name:
                                              _nameController.text.toString()))));
                              // }
                            });
                          },
                          child: Icon(Icons.arrow_forward_sharp),
                        )
                      ],
                    ),
                  ],
                ),
              )
              // Text('Name = $name')
            ],
          ),
        ),
      ),
    );
  }
}
