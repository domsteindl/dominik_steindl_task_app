import 'package:flutter/material.dart';

class S4535 extends StatelessWidget {
  const S4535({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(width: 100.0, height: 100.0, color: Colors.red),
            Container(width: 100.0, height: 100.0, color: Colors.green)
          ],
        ),
        Row(children: [
          Container(width: 100.0, height: 100.0, color: Colors.blue),
          Container(width: 100.0, height: 100.0, color: Colors.yellow)
        ])
      ],
    );
  }
}
