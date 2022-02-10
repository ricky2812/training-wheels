import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String Name="";
  bool buttonchange = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  Text(
                    "Welcome $Name",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username"
                    ),
                    onChanged: (value){
                      Name = value;
                      setState(() {
                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password"
                    ),
                  ),
                  SizedBox(
                      height: 30.0
                  ),

                  InkWell(
                    onTap: () async{
                      setState(() {
                        buttonchange = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: buttonchange?40 : 150,
                      height: 40,
                      alignment: Alignment.center,
                      child: buttonchange ?Icon(Icons.done,color: Colors.white,) :Text("Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        // shape: buttonchange
                        //     ? BoxShape.circle
                        //     : BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(buttonchange?30 : 8)
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(minimumSize: Size(150,40)),
                  //   onPressed: (){
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //
                  // )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
