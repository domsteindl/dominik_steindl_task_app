import 'package:flutter/material.dart';

class S5111 extends StatelessWidget {
  const S5111({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 60.0,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Hello World!"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(width: 100.0, height: 100.0, color: Colors.red),
              Container(width: 100.0, height: 100.0, color: Colors.green)
            ],
          ),
          Padding(
              padding: EdgeInsetsGeometry.all(60.0),
              child: Switch(value: true, onChanged: (switched) => {})),
        ],
      ),
    );
  }
}
