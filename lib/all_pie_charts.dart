import 'package:flutter/material.dart';
import 'package:flutter_demo/pie_chart_disc.dart';
import 'package:flutter_demo/line_chart.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Charts',
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Charts'),
      ),
      body:Row(
        children: [
          const SizedBox(
            height: 1000,
            width: 700,
            child: LineChart(),
          ),
          SizedBox(
            height: 1000,
            width: 700,
            child: PiechartDisc(),
          )

        ],

      ),
    );
  }
}