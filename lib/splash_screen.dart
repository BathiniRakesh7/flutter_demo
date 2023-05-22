import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_demo/login_page.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splashscreen',
      home: Splashscreen(),
    ),
  );
}


class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3),()
    =>
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)
    =>
        const LoginPage()
    )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Colors.white,
              Color.fromARGB(230, 12, 30, 210),
            ],
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('images/Cerone.jpg', height: 200, width: 200,),
              const CircularProgressIndicator()
            ],
          ),

        ),

      ),

    );
  }
}
