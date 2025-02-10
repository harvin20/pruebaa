import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => HomePage();
}

class HomePage extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[800],
          actions: const [
            Icon(Icons.person)]
        ),
      ),
    );
  }
}
