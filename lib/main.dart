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
          actions: const [
            Icon(Icons.search),
            Padding(padding: EdgeInsets.all(10)),
          ],
          backgroundColor: const Color.fromARGB(255, 250, 146, 37),
        ),
        drawer: Drawer(
          child: ListView(
            children: const [
              UserAccountsDrawerHeader(
                accountName: Text('company'),
                accountEmail: Text('cerone@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                        'https://tse2.mm.bing.net/th?id=OIP.cnmJQGN_3J6Zm0Zwi0fAVAAAAA&pid=Api&P=0&h=180',
                      ),
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://tse1.mm.bing.net/th?id=OIP.2HIX184r17IvA1VRuXdtbAHaFL&pid=Api&P=0&h=180',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.login),
                title: Text('Login'),
              ),
              ListTile(
                leading: Icon(Icons.my_library_add_outlined),
                title: Text('My Account'),
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text('Friends'),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Favorites'),
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
              ),
              ListTile(
                leading: Icon(Icons.perm_device_information_rounded),
                title: Text('About'),
              ),
            ],
          ),
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              width: 400,
              height: 200,
              child: Image(
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
            Icon(Icons.notifications_rounded, color: Colors.white),
            Icon(Icons.settings, color: Colors.white),
            //Icon(Icons.search),
          ],
        ),
      ),
    );
  }
}
