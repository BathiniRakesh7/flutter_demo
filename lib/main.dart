import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(debugShowCheckedModeBanner: false,
       home: Scaffold(
         appBar: AppBar(
           title:const Center(
             child: Text('Flutter'),
           ),
               backgroundColor: const Color.fromARGB(255, 37, 13, 189),
         ),
         body:const  Center(
           child: Text('Dart Language'),
         ),
         backgroundColor: Colors.yellow[50],
       ),
     ),
  );
  }