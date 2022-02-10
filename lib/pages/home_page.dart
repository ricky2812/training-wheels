import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final int days = 1;
    final String red = "1200op";

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog APP")
      ),
      body: Center(
      child: Container(
      child: Text("First android app: $days and with power $red"),
        ),
      ),
      drawer: Drawer(),
    );   
  }
}
