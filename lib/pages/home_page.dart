import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final int days = 1;

    final String red = "1200";

    loadData() async{
      var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
      var decodedData = jsonDecode(catalogJson);
      var productsData = decodedData["products"];
    }

    @override
    void initState(){
      super.initState();
      loadData();
    }


    final dummyList = List.generate(5, (index) => Catalogmodel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App")
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index){
            return ItemWidget(
              item: dummyList[index],);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
