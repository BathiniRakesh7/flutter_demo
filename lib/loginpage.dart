import 'package:flutter/material.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Icon(
                  Icons.lock,
                  size: 70,
                ),
                SizedBox(height: 40),
                Text(
                    'WelCome To My App',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 25,
                ),),
                SizedBox(height: 25),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:100),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                    ),
                      fillColor: Colors.white70,
                      filled: true,
                      hintText: 'Email'
                  ),
                ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:100),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54),
                        ),
                        fillColor: Colors.white70,
                        filled: true,
                        hintText: 'Password'
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
