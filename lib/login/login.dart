import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fiberbase_login/signup/signup.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              image: DecorationImage(
                  image: AssetImage('images/login.png'), fit: BoxFit.cover)),
        ),
        Container(
          width: width,
          margin: EdgeInsets.only(left: 10.0, right: 10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Hello",
              style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            Text(
              "SignIn to your account",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(1, 1),
                    spreadRadius: 7,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(1, 1),
                    spreadRadius: 7,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.password),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(children: [
                Expanded(child: Container()),
                Text(
                  "Forgot your password?",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
              ]),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(left: 20.0),
                width: width * 0.5,
                height: 50.0,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text('Sign In'),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                    text: "Don\'t have the account?",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 20,
                    ),
                    children: [
                      TextSpan(
                          text: "Create",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.to(() => SignUp())),
                    ]),
              ),
            ),
          ]),
        )
      ]),
    );
  }
}
