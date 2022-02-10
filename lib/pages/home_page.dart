import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final int days = 1;
    final String red = "1200";

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog APP")
      ),
      body: Center(
      child: Container(
      child: Text("First android app: $days and with power $red"),
        ),
      ),
      drawer: MyDrawer(),
    );   
  }
}
