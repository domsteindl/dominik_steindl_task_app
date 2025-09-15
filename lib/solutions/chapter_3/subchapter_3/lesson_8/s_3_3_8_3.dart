import 'package:flutter/material.dart';

FormattedTime formatSeconds(int seconds) {
  //Denkansatz
  // 1 Stunde = 60 * 60 Sekunden
  // 1 Minute = 60 Sekunden
 

  int secondsToHour = seconds ~/ 3600;
  int remainingSeconds = seconds % 3600;

  int secondsToMinutes = remainingSeconds ~/ 60;

  int secondsRest = remainingSeconds % 60;
/*
  if (seconds % 60 % 60 > 0) {
    secondsRest = seconds % 60;
    secondsToHour = seconds - secondsRest;
    hours = secondsToHour ~/ 60 ~/ 60;
  } else if (seconds % 60 > 0) {}
      secondsRest = seconds % 60;
    secondsToMinutes = seconds - secondsRest;
    minutes = secondsToHour ~/ 60;
    */
  return FormattedTime(hours: secondsToHour, minutes: secondsToMinutes, seconds: secondsRest);
}

class FormattedTime {
  final int hours;
  final int minutes;
  final int seconds;

  const FormattedTime({
    required this.hours,
    required this.minutes,
    required this.seconds,
  });

  @override
  String toString() {
    String result = "";
    if (hours > 0) {
      result += "$hours Stunden ";
    }
    if (minutes > 0) {
      result += "$minutes Minuten ";
    }
    if (seconds > 0) {
      result += "$seconds Sekunden";
    }
    return result;
  }
}

class S3383 extends StatefulWidget {
  const S3383({super.key});

  @override
  State<S3383> createState() => _S3383State();
}

class _S3383State extends State<S3383> {
  final TextEditingController _inputController = TextEditingController();
  String? output;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _inputController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Sekunden',
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          output?.toString() ?? '',
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(
          height: 32,
        ),
        ElevatedButton(
          onPressed: () {
            final input = int.tryParse(_inputController.text);
            if (input == null) {
              setState(() {
                output = null;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Bitte eine Anzahl an Sekunden eingeben.'),
                ),
              );
              return;
            }
            setState(() {
              output = formatSeconds(input).toString();
            });
          },
          child: const Text('Formatiere'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }
}
