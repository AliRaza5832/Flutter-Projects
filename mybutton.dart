import 'package:flutter/material.dart';
import 'package:my_project/constants.dart';

class MyButton extends StatelessWidget {
  // final String name;
  // final Color color;
  // final VoidCallback onpress;
  final String name;
  final Color color;
  final VoidCallback onpress;

  const MyButton({
    super.key,
    required this.name,
    this.color = const Color(0xffa5a5a5),
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 80,
            child: Center(
                child: Text(
              name,
              style: TextStyle(fontSize: 20, color: whiteColor),
            )),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
