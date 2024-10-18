import 'package:flutter/material.dart';

class Newpage extends StatefulWidget {
  const Newpage({super.key});

  @override
  State<Newpage> createState() => _NewpageState();
}

class _NewpageState extends State<Newpage> {
  int vari = 0;

  void increase() {
    setState(() {
      vari++;
    });
  }

  void decrese() {
    setState(() {
      vari--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
          backgroundColor: Colors.limeAccent,
          title: Text(
            "Counter Application",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You Can Increase or Decrease Number",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              vari.toString(),
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      decrese();
                    },
                    child: Text(
                      "-",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                ElevatedButton(
                    onPressed: () {
                      increase();
                    },
                    child: Text(
                      "+",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
