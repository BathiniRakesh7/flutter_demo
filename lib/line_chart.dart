import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Line Chart',
      home: LineChart(),
    ),
  );
}

class LineChart extends StatefulWidget {
  const LineChart({Key? key}) : super(key: key);

  @override
  State<LineChart> createState() => _LineChartState();
}

class _LineChartState extends State<LineChart> {
  late List<StocksData> _ChartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _ChartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SfCartesianChart(
        title: ChartTitle(
            text: 'Stocks Data', textStyle: const TextStyle(fontSize: 35)),
        margin: const EdgeInsets.symmetric(vertical: 30),
        tooltipBehavior: _tooltipBehavior,
        series: <SplineSeries>[
          SplineSeries<StocksData, double>(
              dataSource: _ChartData,
              xValueMapper: (StocksData month, _) => month.month,
              yValueMapper: (StocksData stocks, _) => stocks.stocks,
              dataLabelSettings: const DataLabelSettings(isVisible: true),
              enableTooltip: true,
              color: Colors.yellow,
              width: 4,
              opacity: 1),
        ],
        primaryXAxis: NumericAxis(edgeLabelPlacement: EdgeLabelPlacement.shift),
      ),
    ));
  }

  List<StocksData> getChartData() {
    final List<StocksData> ChartData = [
      StocksData(01, 50),
      StocksData(02, 30),
      StocksData(03, 20),
      StocksData(04, 70),
      StocksData(05, 90),
      StocksData(06, 110),
    ];
    return ChartData;
  }
}

class StocksData {
  StocksData(this.month, this.stocks);

  final double month;
  final double stocks;
}
