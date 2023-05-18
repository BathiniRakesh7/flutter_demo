import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          title: const Center(
            child: Text('Flutter'),
          ),
          backgroundColor: const Color.fromARGB(255, 250, 146, 37),
        ),
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 400,
                  height: 200,
                  child: const Image(
                      image: NetworkImage(
                          'https://1.bp.blogspot.com/-9oEdNse-Jpg/XqGy4q33HII/AAAAAAAAAq0/b_1A9VJPdrAJANfxpBIlWHUqcaMC0-LfACLcBGAsYHQ/w1200-h630-p-k-no-nu/1.jpg')),
                ),
                Container(
                  width: 150,
                  height: 100,
                  padding: const EdgeInsets.all(5),
                  child: const Image(
                      image: NetworkImage(
                          'https://tse3.mm.bing.net/th?id=OIP.hd3tZTnUwT8tGEgqRcQtAwHaEK&pid=Api&P=0&h=180')),
                ),
                Container(
                  width: 150,
                  height: 100,
                  padding: const EdgeInsets.all(3),
                  child: const Image(
                      image: NetworkImage(
                          'https://1.bp.blogspot.com/-g4tcgj4zNaw/XatRyQkZ-JI/AAAAAAAAIWk/BKR6OHbKU9A74CiCGXVyZ8AfLIqwQF4kACNcBGAsYHQ/w1200-h630-p-k-no-nu/cpp.png')),
                ),
              ],
            )),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.deepPurpleAccent,
          color: Colors.amber,
          animationDuration: const Duration(milliseconds: 300),
          items: const [
            Icon(Icons.home, color: Colors.white),
            Icon(Icons.favorite, color: Colors.white),
            Icon(Icons.settings, color: Colors.white),
            //Icon(Icons.search),
          ],
        ),
      ),
    );
  }
}
