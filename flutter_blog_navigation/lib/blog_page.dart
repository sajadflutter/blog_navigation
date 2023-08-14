import 'package:flutter/material.dart';
import 'package:flutter_blog_navigation/custom_widgets/post_widget.dart';

class BlogScreen extends StatelessWidget {
  BlogScreen({super.key});
  final List<Widget> listblogpost = [
    getBlogPost(
        imagename: 's.png',
        title: 'buy signal:SafeMoon',
        target1: 'Buy:12,30',
        target2: 'Sell:12,60'),
    getBlogPost(
        imagename: 'a.png',
        title: 'buy signal:Alchemy',
        target1: 'Buy:12,30',
        target2: 'Sell:12,60'),
    getBlogPost(
        imagename: 'c.png',
        title: 'buy signal:Cosmos',
        target1: 'Buy:12,30',
        target2: 'Sell:12,60'),
    getBlogPost(
        imagename: 'r.png',
        title: 'buy signal:Ripple',
        target1: 'Buy:12,30',
        target2: 'Sell:12,60'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 14, 36, 93),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 133, 190, 225),
        centerTitle: true,
        title: Text(
          'News and VIP Signals',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...listblogpost,
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    elevation: 10,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Log out',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
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
