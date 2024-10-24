import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loggin_pages/login.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  final bgcolor = Colors.lightBlue[800];
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  void sign() {
    if (_key.currentState!.validate()) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => First()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bgcolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "AQUADR",
                  style: GoogleFonts.bubblegumSans(
                      textStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
                Icon(
                  Icons.water_drop_outlined,
                  size: 40,
                  color: Colors.white,
                ),
                Text(
                  "PS",
                  style: GoogleFonts.bubblegumSans(
                      textStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      "SIGN UP",
                      style: GoogleFonts.bubblegumSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Enter Email",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Form(
                    key: _key,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter Email";
                            } else if (!value.contains("@gmail.com")) {
                              return "Invalid Email";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "John123@gmail.com",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Enter Password",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter Password";
                            } else if (value!.length < 6) {
                              return "Password Characters Should Be Greater Than 6";
                            }
                            return null;
                          },
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            hintText: "******",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Enter Confirm Password",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter Password";
                            } else if (value!.length < 6) {
                              return "Password Characters Should Be Greater Than 6";
                            }
                            return null;
                          },
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            hintText: "******",
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          sign();
                        },
                        child: Text(
                          "Sign up",
                          style: GoogleFonts.bubblegumSans(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    height: 50,
                    width: 430,
                    decoration: BoxDecoration(
                      color: bgcolor,
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account ?",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => First()));
                        },
                        child: Text(
                          " Sign In",
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w600,
                            color: bgcolor,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 1,
                        width: 200,
                        color: Colors.orange[600],
                      ),
                      Text(
                        " OR ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.orange[600],
                        ),
                      ),
                      Container(
                        height: 1,
                        width: 200,
                        color: Colors.orange[600],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 60,
                          width: 70,
                          color: Colors.grey[900],
                          child: Icon(
                            Icons.facebook_rounded,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          child: Icon(
                            Icons.call_sharp,
                            color: Colors.white,
                            size: 40,
                          ),
                          height: 60,
                          width: 70,
                          color: Colors.grey[900],
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          child: Icon(
                            Icons.email_rounded,
                            color: Colors.white,
                            size: 40,
                          ),
                          height: 60,
                          width: 70,
                          color: Colors.grey[900],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            height: 624,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
          ),
        ],
      ),
    );
  }
}
