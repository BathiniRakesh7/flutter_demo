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
      backgroundColor: Colors.grey[200],
      body: SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 350,
                        width: 400,
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: PiechartDisc(),
                      ),
                      Container(
                        height: 350,
                        width: 400,
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const HomePage(),
                      ),
                      Container(
                        height: 350,
                        width: 400,
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const HomePage(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 350,
                        width: 400,
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const HomePage(),
                      ),
                      Container(

                        height: 350,
                        width: 700,
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const LineChart(),
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ),
      );
  }
}
