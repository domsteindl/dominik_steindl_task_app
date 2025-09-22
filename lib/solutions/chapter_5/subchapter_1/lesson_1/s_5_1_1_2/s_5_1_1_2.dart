import 'package:flutter/material.dart';
import 'task_5_1_1_2_styles.dart';
class S5112 extends StatelessWidget {
  const S5112({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 20.0,
          children: [
            Image.network("https://media.istockphoto.com/id/1201041782/de/foto/alpaka.jpg?s=612x612&w=0&k=20&c=QhcfsiinQeRzdWqiiJQrglCwtuenpQtrrPKuwSvy8VM=")
          , Text("Name", style: Task5111Styles.lamaHeadlines),
          Text("Diana das Lama", style: Task5111Styles.lamaDescription),
          Text("Gewicht", style: Task5111Styles.lamaHeadlines),
          Text("120 kg", style: Task5111Styles.lamaDescription),
          Text("Größe", style: Task5111Styles.lamaHeadlines),
          Text("1,80 m", style: Task5111Styles.lamaDescription),
          Text("Lieblingsessen", style: Task5111Styles.lamaHeadlines),
          Text("Gras", style: Task5111Styles.lamaDescription)
          ],
        ),
      ),
    );
  }
}
