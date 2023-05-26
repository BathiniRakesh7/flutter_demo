
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
    return    Scaffold(
      body: const SafeArea(
        child: PieChart(

              dataMap: {
                "Low": 10,
                "Medium": 14,
                "High": 7,
              },
              chartType: ChartType.ring,
              ringStrokeWidth: 20,
              chartValuesOptions: ChartValuesOptions(
                  showChartValueBackground: false),

              legendOptions:LegendOptions(
                  legendTextStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  legendPosition: LegendPosition.right,
                  showLegends: true),
              animationDuration: Duration(seconds: 2),
              gradientList: <List<Color>>[
                [
                  Color.fromRGBO(255, 223, 0, 1.0),
                  Color.fromRGBO(250, 146, 37, 1.0),
                ],
                [
                  Color.fromRGBO(246, 238, 82, 1.0),
                  Color.fromRGBO(92, 74, 140, 1.0),
                ],
                [
                  Color.fromRGBO(211, 209, 209, 1.0),
                  Color.fromRGBO(108, 93, 126, 1.0),
                ],
              ],
            ),
      ),
      );
  }
}
