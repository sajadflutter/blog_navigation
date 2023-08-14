import 'package:flutter/material.dart';
import 'blog_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void NavigateToBlogPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 179, 88),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Icon(
                    Icons.login,
                    color: Colors.red,
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Image(
                image: AssetImage('images/w.png'),
              ),
              SizedBox(
                height: 70,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  side: BorderSide(
                    color: Color.fromARGB(255, 221, 219, 214),
                    width: 3,
                  ),
                  primary: Color.fromARGB(255, 237, 240, 241),
                ),
                onPressed: () {
                  NavigateToBlogPage(context, BlogScreen());
                },
                child: Text(
                  'Sgin up',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  primary: Color.fromARGB(255, 25, 85, 10),
                ),
                onPressed: () {},
                child: Text(
                  'Log in',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'forgotMyPassword',
                      style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                    ),
                  ),
                  Icon(
                    Icons.key,
                    color: Colors.red,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
