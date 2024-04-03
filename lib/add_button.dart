import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final void Function() addMoney;
  AddButton({
    required this.addMoney,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
              onPressed: addMoney,
              child: Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(40)),
                child: Center(
                  child: Text(
                    "Add Money",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
        ));
  }
}
