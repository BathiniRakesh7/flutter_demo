// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

void main() {
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pie Chart',
      home: PiechartDisc(),
    ),
  );
}

class PiechartDisc extends StatefulWidget {

  @override
  _PiechartDisc createState() => _PiechartDisc();
}

class _PiechartDisc extends State<PiechartDisc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pie Chart"),
      ),
      body: const PieChart(
        dataMap: {"India": 50, "Australia": 30, "England": 25, "Pakistan": 15},
        chartRadius: 400,
        colorList: [Colors.red, Colors.green, Colors.blue, Colors.orange],
        chartValuesOptions: ChartValuesOptions(
            chartValueStyle: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            showChartValueBackground: false),

        legendOptions: LegendOptions(
            legendTextStyle:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            legendPosition: LegendPosition.right,
            showLegends: true),
        animationDuration: Duration(seconds: 2),
      ),
    );
  }
}
