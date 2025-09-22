import 'package:flutter/material.dart';

class S5113 extends StatelessWidget {
  const S5113({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomMaterialButton();
  }
}

class CustomMaterialButton extends StatelessWidget {
  final String label;
  final Container? container;

  const CustomMaterialButton(
      {super.key, this.label = "Ripple", this.container});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
          radius: 50.0,
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Ink(
              decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(20.0), boxShadow: [
                BoxShadow(
                  color: Colors.yellow,
                  offset: const Offset(0, 0),
                  blurRadius: 8,
                  spreadRadius: 4,
                )
              ]),
              width: 100.0,
              height: 50.0,
             
              child: Text(
                label,
                style: TextStyle(),
              ),
            ),
          )),
    );
  }
}
