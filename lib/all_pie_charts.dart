import 'package:flutter/material.dart';
import 'package:flutter_demo/pie_chart_disc.dart';
import 'package:flutter_demo/line_chart.dart';
import 'package:flutter_demo/BarGraph/home_page.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Charts',
      home: HomePage1(),
    ),
  );
}

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // appBar: AppBar(
      //   title: const Text('Charts'),

      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 350,
                    width: 400,
                    margin: const EdgeInsets.all(40),
                    padding: const EdgeInsets.all(50),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade600,
                            offset: const Offset(-2, -2),
                            blurRadius: 10,
                            spreadRadius: 1,
                          ),
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-2, -2),
                            blurRadius: 10,
                            spreadRadius: 1,
                          ),
                        ]
                    ),
                    child: PiechartDisc(),
                  ),
                  Container(
                    height: 350,
                    width: 400,
                    margin: const EdgeInsets.all(40),
                    padding: const EdgeInsets.all(50),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade600,
                            offset: const Offset(-2, -2),
                            blurRadius: 10,
                            spreadRadius: 1,
                          ),
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-2, -2),
                            blurRadius: 10,
                            spreadRadius: 1,
                          ),
                        ]
                    ),
                    child: HomePage(),
                  ),
                ],
              ),
          Container(
            height: 400,
            width: 400,
            margin: const EdgeInsets.all(40),
            padding: const EdgeInsets.all(50),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade600,
                    offset: const Offset(-2, -2),
                    blurRadius: 10,
                    spreadRadius: 1,
                  ),
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-2, -2),
                    blurRadius: 10,
                    spreadRadius: 1,
                  ),
                ]
            ),
            child: LineChart(),
          ),
            ],
          ),
        ),
      ),
    );
  }
}
