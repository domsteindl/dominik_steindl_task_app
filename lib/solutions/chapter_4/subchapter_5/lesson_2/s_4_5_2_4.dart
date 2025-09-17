import 'package:flutter/material.dart';

class S4524 extends StatelessWidget {
  const S4524({super.key});
  @override
  Widget build(BuildContext context) {
    return ShowHideNameWidget();
  }
}

class ShowHideNameWidget extends StatefulWidget {
  const ShowHideNameWidget({super.key});

  @override
  State<ShowHideNameWidget> createState() => _ShowHideNameWidgetState();
}

class _ShowHideNameWidgetState extends State<ShowHideNameWidget> {
  String name = "";
  String label = "Name anzeigen";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(name),
        ElevatedButton(
            onPressed: () => setState(() {
                  if (name.isEmpty) {
                    name = "Dominik";
                    label = NameState.shown.label;
                  } else {
                    name = "";
                    label = NameState.hidden.label;
                  }
                }),
            child: Text(label))
      ],
    );
  }
}

enum NameState {
  shown("Name verstecken"),
  hidden("Name anzeigen");

  final String label;

  const NameState(this.label);

  @override
  String toString() => label;
}
