import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home Page",
        style: TextStyle(
          fontWeight: FontWeight.bold, 
        ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("My Home Page",style: TextStyle(
              fontSize: 30,fontWeight: FontWeight.bold
            ),)
          ],
        ),
      ),
    );
  }
}