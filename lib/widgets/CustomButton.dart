import 'package:flutter/material.dart';
import 'package:socialwise/homepage.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.icon,
      required this.text,
      required this.bgcolor,
      required this.txtcolor});

  final String icon;
  final String text;
  final Color bgcolor;
  final Color txtcolor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Homepage()));
          },
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            backgroundColor: bgcolor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                icon,
                width: 25,
                height: 25,
              ),
              SizedBox(width: 20),
              Text(
                text,
                style: TextStyle(color: txtcolor),
              ),
            ],
          )),
    );
  }
}
