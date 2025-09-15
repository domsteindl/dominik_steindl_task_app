import 'package:flutter/material.dart';

class S4522 extends StatelessWidget {
  const S4522({super.key});
  @override
  Widget build(BuildContext context) {
     return MyStatelessWidget("Dominik");
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget(this.name, {super.key} );
 final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Hello $name"),
        const ElevatedButton(onPressed: null, child: Text("Klick mich")),
      ],
    );
  }
}
