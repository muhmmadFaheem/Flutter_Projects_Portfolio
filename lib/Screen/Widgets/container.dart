import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_application/Screen/Widgets/text.dart';

class NewWidget extends StatelessWidget {
  NewWidget(
      {super.key,
      required this.ondelete,
      required this.value,
      required this.onChanged,
      required this.text});

  bool value;
  String text;

  void Function(bool?)? onChanged;
  VoidCallback ondelete;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(motion: StretchMotion(), children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 17),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.orange.shade400,
            ),
            height: 70,
            width: 460,
            child: GestureDetector(
                onTap: () {
                  ondelete();
                },
                child: Icon(Icons.delete)),
          ),
        )
      ]),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 70,
          width: 460,
          decoration: BoxDecoration(
              color: Colors.orange[900],
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Checkbox(
                activeColor: Colors.white,
                checkColor: Colors.black,
                value: value,
                onChanged: onChanged,
                shape: const StadiumBorder(side: BorderSide()),
              ),
              Container(
                  margin: const EdgeInsets.only(left: 80),
                  child: NewText(title: text, check: value))
            ],
          ),
        ),
      ),
    );
  }
}
