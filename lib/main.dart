import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text('Flutter'),
            ),
            backgroundColor: const Color.fromARGB(255, 92, 189, 13),
          ),
          body: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.indigo,
                width: 400,
                height: 200,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.fromLTRB(300, 0, 0, 0),
                child: const Image(
                    image: NetworkImage(
                        'https://1.bp.blogspot.com/-9oEdNse-Jpg/XqGy4q33HII/AAAAAAAAAq0/b_1A9VJPdrAJANfxpBIlWHUqcaMC0-LfACLcBGAsYHQ/w1200-h630-p-k-no-nu/1.jpg')),
              ),
              Container(
                color: Colors.pink[700],
                width: 150,
                height: 150,
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.fromLTRB(300, 0, 0, 0),
                child: const Image(
                    image: NetworkImage(
                        'https://tse3.mm.bing.net/th?id=OIP.hd3tZTnUwT8tGEgqRcQtAwHaEK&pid=Api&P=0&h=180')),
              ),
              Container(
                color: Colors.redAccent,
                width: 150,
                height: 150,
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.fromLTRB(300, 0, 0, 0),
                child: const Image(
                    image: NetworkImage(
                        'https://1.bp.blogspot.com/-g4tcgj4zNaw/XatRyQkZ-JI/AAAAAAAAIWk/BKR6OHbKU9A74CiCGXVyZ8AfLIqwQF4kACNcBGAsYHQ/w1200-h630-p-k-no-nu/cpp.png')),
              ),
            ],
          ))),
    ),
  );
}
