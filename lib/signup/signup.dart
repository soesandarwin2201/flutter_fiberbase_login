import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fiberbase_login/controller/auth_controller.dart';
import 'package:flutter_fiberbase_login/login/login.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    List images = ['google.png', 'facebook.png', 'twitter.png'];
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
          height: 60.0,
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
            controller: emailController,
            decoration: InputDecoration(
              hintText: "Your Email",
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
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Your Password",
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
          height: 50,
        ),
        GestureDetector(
          onTap: () {
            AuthController.instance.register(
                emailController.text.trim(), passwordController.text.trim());
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
                    'Sign Up',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                )),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: RichText(
            text: TextSpan(
                text: "Have an account?",
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 20,
                ),
                children: [
                  TextSpan(
                    text: "Login",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.to(() => LoginPage()),
                  ),
                ]),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Center(
          child: RichText(
            text: TextSpan(
              text: "Create the account with following method,",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 15,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Center(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    AuthController.instance.signInWithGoogle();
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/google.png'),
                    radius: 30,
                  ),
                ),
              ],
            ),
          ),
        )
        // Padding(
        //   padding: EdgeInsets.only(left: 15, right: 15),
        //   child: Wrap(
        //     children: List<Widget>.generate(3, (index) {
        //       return CircleAvatar(
        //         radius: 30,
        //         backgroundImage: AssetImage('images/' + images[index]),
        //       );
        //     }),
        //   ),
        // ),
      ]),
    );
  }
}
