import 'package:flutter/material.dart';
import 'package:flutter_application_4/pages/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
                height: 300,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 30,
                  //color: Colors.blue,
                  //backgroundColor: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "enter password", labelText: "password"),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                         Navigator.pushNamed(context, Routes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 40 : 80,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadiusDirectional.circular(
                                changeButton ? 20 : 8)),
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "login",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                      ),
                    )

                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, Routes.homeRoute);
                    //   },
                    //   style: TextButton.styleFrom(minimumSize: Size(140, 50)),
                    //   child: Text("login"),
                    // )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}






/*
Center(
        child: Text("loginpage",
        style:TextStyle(
          fontSize:20 ,
          color: Colors.blue,
          fontWeight: FontWeight.w900,
          backgroundColor: Colors.black
        ),
       textScaleFactor: 2.0,
        ),
      ),*/