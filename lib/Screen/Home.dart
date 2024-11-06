import 'package:flutter/material.dart';
import 'package:todo_application/Screen/Widgets/container.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void onChanged(int index) {
    setState(() {
      Notes[index][1] = !Notes[index][1];
    });
  }

  TextEditingController _controller = TextEditingController();

  List Notes = [];
  onAdd() {
    setState(() {
      Notes.add([_controller.text.toString(), false]);
      _controller.clear();
    });
  }

  onDelete(int index) {
    setState(() {
      Notes.removeAt(index);
    });
  }

  Add() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.yellow[300],
            content: Container(
              height: 200,
              width: 200,
              color: Colors.yellow[300],
              child: Column(
                children: [
                  TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(hintText: "Enter Task Here..."),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orange[400],
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              onAdd();
                            },
                            child: Text(
                              "ADD",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orange[400],
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange.shade200,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Add();
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text(
            "To-Do App",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.limeAccent,
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: Notes.length,
            itemBuilder: (context, index) {
              return NewWidget(
                value: Notes[index][1],
                onChanged: (p0) {
                  onChanged(index);
                },
                text: Notes[index][0],
                ondelete: () {
                  onDelete(index);
                },
              );
            }),
      ),
    );
  }
}
