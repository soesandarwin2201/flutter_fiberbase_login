import 'package:flutter/material.dart';
import 'package:flutter_fiberbase_login/controller/auth_controller.dart';

class Splash extends StatelessWidget {
  final String email;
  const Splash({super.key, required this.email});

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
          email,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 100.0,
        ),
        GestureDetector(
          onTap: () {
            AuthController.instance.signout();
          },
          child: Center(
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(30),
                ),
                margin: EdgeInsets.only(left: 20.0),
                width: width * 0.5,
                height: 50.0,
                child: Center(
                  child: Text(
                    'Sign Out',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                )),
          ),
        ),
      ]),
    );
  }
}
