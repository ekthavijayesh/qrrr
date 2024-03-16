import 'dart:convert';

import 'package:flutter/material.dart';

import 'loginscreen.dart';
import 'package:http/http.dart' as http;

class Reg extends StatefulWidget {
  const Reg({Key? key}) : super(key: key);

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  TextEditingController name = TextEditingController();
  TextEditingController rollno = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  void register() async {
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/register');
    var response = await http.post(uri,
        headers: <String, String>{
          'Content-Type': 'application/json;charset=UTF-8',
        },
        body: jsonEncode({
          'name': name.text,
          'email': email.text,
          'rollno': rollno.text,
          'password': password.text,
        }));
    print(response.statusCode);
    print(response.body);
    var data=jsonDecode(response.body);
    print(data["message"]);
    if (response.statusCode == 200) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LoginScreen();
      }));
      print('Success');
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('data["message"]')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          const SizedBox(height: 80),
          const Text(
            'Registration',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 50,
            ),
          ),
          SizedBox(height: 60),
          TextField(
            controller: name,
            decoration: const InputDecoration(
              labelText: 'Enter your NAME',
              labelStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
            ),
          ),
          SizedBox(height: 60),
          TextField(
            controller: rollno,
            decoration: const InputDecoration(
              labelText: 'Enter your ROLL NO',
              labelStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
            ),
          ),
          SizedBox(height: 60),
          TextField(
            controller: email,
            decoration: const InputDecoration(
              labelText: 'Enter your email',
              labelStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
            ),
          ),
          SizedBox(height: 60),
          TextField(
            controller: password,
            decoration: const InputDecoration(
              labelText: 'Enter your password',
              labelStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            style: ElevatedButton.styleFrom(),
            onPressed: () {
              register();
            },
            child: const Text(
              'REGISTER ',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ));
  }
}
