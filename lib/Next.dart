import 'package:flutter/material.dart';

class Next extends StatefulWidget {
  const Next({Key? key}) : super(key: key);

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLuLa6vRiFgFwV7LL9JjfzJo3BPzyBw5oXEwkXki85pUammQiSCr7MkTDdcRIHHNNV4LQ&usqp=CAU'),
              radius: 100,
            ),
            Text('ALBERT EINSTEIN',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            Text('SCIENTIST',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            Container(
                width: 500,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.white),
                child: Row(children: [
                  Icon(Icons.phone, color: Colors.teal),

                  Text('9447150819', style: TextStyle(color: Colors.teal)),
                ])),
            SizedBox(height: 20),
            Container(
              width: 500,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.white),
              child: Row(children: [
                Icon(Icons.mail, color: Colors.teal),
                SizedBox(width: 20.0),
                Text('alberteinstein@gmail.com',
                    style: TextStyle(color: Colors.teal)),
              ]),
            )
          ],
        ),
      ),
    ));
  }
}
