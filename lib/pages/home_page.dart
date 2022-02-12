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
     Catalogmodel.items = List.from(productsData)
          .map<Item>((item) => Item.fromMap(item))
          .toList();
    }

    @override
    void initState(){
      super.initState();
      loadData();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App")
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: Catalogmodel.items.length,
          itemBuilder: (context, index){
            return ItemWidget(
              item: Catalogmodel.items[index],);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
