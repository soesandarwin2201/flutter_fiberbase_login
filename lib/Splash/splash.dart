import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(children: [
        Container(
          width: width,
          height: height * 0.3,
          decoration: BoxDecoration(
            color: Colors.lightBlue,
          ),
          child: Column(children: [
            SizedBox(
              height: height * 0.16,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('images/profile.png'),
              radius: 50,
            ),
          ]),
        ),
        SizedBox(
          height: 40.0,
        ),
        Text(
          "Welcome to SSy_app",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "@email.com",
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 100.0,
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(left: 20.0),
            width: width * 0.5,
            height: 50.0,
            child: OutlinedButton(
              onPressed: () {},
              child: Text('Sign Out'),
            ),
          ),
        ),
      ]),
    );
  }
}
