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
  @override
  void initState() {
    // TODO: implement initState
    _ChartData= getChartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
    body: SfCartesianChart(series: <ChartSeries>[
      LineSeries<StocksData,double>(dataSource:_ChartData,
      xValueMapper: (StocksData stocks,_)=>stocks.month,
        yValueMapper: (StocksData stocks,_)=>stocks.stocks)
    ],
    primaryXAxis: NumericAxis(edgeLabelPlacement: EdgeLabelPlacement.shift),
     ),));

  }
  List<StocksData>getChartData(){
    final List<StocksData> ChartData=[
      StocksData(1, 50),
      StocksData(2, 30),
      StocksData(3, 20),
      StocksData(4, 70),
      StocksData(5, 90),
      StocksData(6, 110),
    ];
    return ChartData;
  }
}

class StocksData{
  StocksData(this.month,this.stocks);
  final double month;
  final double stocks;

}
