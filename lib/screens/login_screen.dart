import 'package:flutter/material.dart';

import 'home_page_screen.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Colors.purple,
              Colors.pink,
              Colors.redAccent,
              Colors.orange
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 150,),
                Image.network(
                    "https://logos-world.net/wp-content/uploads/2020/04/Instagram-Logo-2010-2013.png",
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width / 2.5),
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: "Phone number, username or email address",
                    filled: true,
                    fillColor: Colors.white,
                  )),
                ),
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: "Password",
                          filled: true,
                          fillColor: Colors.white,
                          suffixIcon: IconButton(
                              onPressed: () {}, icon: Icon(Icons.visibility)))),
                ),
                Row(children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.63,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text("Forgotten password?",
                        style: TextStyle(color: Colors.white)),
                  )
                ]),
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, HomePage.route);
                        },
                        child: Text("Log In"),
                      )),
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: Divider(
                            color: Colors.white,
                            thickness: 2,
                          )),
                    ),
                    Text("or", style: TextStyle(color: Colors.white)),
                    Padding(
                      padding:
                          EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: Divider(
                            color: Colors.white,
                            thickness: 2,
                          )),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook, color: Colors.white),
                    Text(
                      "Log in with Facebook",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
            Align(alignment: FractionalOffset.bottomCenter,
              child: Column(
                children: [
                  Divider(
                    color: Colors.white,
                    thickness: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",
                          style: TextStyle(color: Colors.white)),
                      GestureDetector(
                        child: Text("Sign Up",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
